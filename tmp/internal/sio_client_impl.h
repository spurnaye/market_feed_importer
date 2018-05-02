#pragma once
#include <cstdint>

#include <websocketpp/client.hpp>
#include <websocketpp/config/debug_asio.hpp>
typedef websocketpp::config::debug_asio_tls client_config;
#include <boost/asio/deadline_timer.hpp>

#include <memory>
#include <map>
#include <thread>
#include "../sio_client.h"
#include "sio_packet.h"

namespace sio
{
    using namespace websocketpp;
    
    typedef websocketpp::client<client_config> client_type;
    
    class client_impl {
        
    protected:
        enum con_state
        {
            con_opening,
            con_opened,
            con_closing,
            con_closed
        };
        
        client_impl();
        
        ~client_impl();
        
        void clear_con_listeners()
        {
            m_open_listener = nullptr;
            m_close_listener = nullptr;
            m_fail_listener = nullptr;
            m_reconnect_listener = nullptr;
            m_reconnecting_listener = nullptr;
        }
        
        void clear_socket_listeners()
        {
            m_socket_open_listener = nullptr;
            m_socket_close_listener = nullptr;
        }
        
        // Client Functions - such as send, etc.
        void connect(const std::string& uri, const std::map<std::string, std::string>& queryString,
                     const std::map<std::string, std::string>& httpExtraHeaders);
        
        sio::socket::ptr const& socket(const std::string& nsp);
        
        // Closes the connection
        void close();
        
        void sync_close();
        
        bool opened() const { return m_con_state == con_opened; }
        
        std::string const& get_sessionid() const { return m_sid; }

        void set_reconnect_attempts(unsigned attempts) {m_reconn_attempts = attempts;}

        void set_reconnect_delay(unsigned millis) {m_reconn_delay = millis;if(m_reconn_delay_max<millis) m_reconn_delay_max = millis;}

        void set_reconnect_delay_max(unsigned millis) {m_reconn_delay_max = millis;if(m_reconn_delay>millis) m_reconn_delay = millis;}
        
    protected:
        void send(packet& p);
        
        void remove_socket(std::string const& nsp);
        
        boost::asio::io_service& get_io_service();
        
        void on_socket_closed(std::string const& nsp);
        
        void on_socket_opened(std::string const& nsp);
        
    private:
        void run_loop();

        void connect_impl(const std::string& uri, const std::string& query);

        void close_impl(close::status::value const& code,std::string const& reason);
        
        void send_impl(std::shared_ptr<const std::string> const&  payload_ptr,frame::opcode::value opcode);
        
        void ping(const boost::system::error_code& ec);
        
        void timeout_pong(const boost::system::error_code& ec);

        void timeout_reconnect(boost::system::error_code const& ec);

        unsigned next_delay() const;

        socket::ptr get_socket_locked(std::string const& nsp);
        
        void sockets_invoke_void(void (sio::socket::*fn)(void));
        
        void on_decode(packet const& pack);
        void on_encode(bool isBinary,shared_ptr<const string> const& payload);
        
        //websocket callbacks
        void on_fail(connection_hdl con);

        void on_open(connection_hdl con);

        void on_close(connection_hdl con);

        void on_message(connection_hdl con, client_type::message_ptr msg);

        //socketio callbacks
        void on_handshake(message::ptr const& message);

        void on_pong();

        void reset_states();

        void clear_timers();
        
        #if SIO_TLS
        typedef websocketpp::lib::shared_ptr<boost::asio::ssl::context> context_ptr;
        
        context_ptr on_tls_init(connection_hdl con);
        #endif
        
        // Percent encode query string
        std::string encode_query_string(const std::string &query);

        // Connection pointer for client functions.
        connection_hdl m_con;
        client_type m_client;
        // Socket.IO server settings
        std::string m_sid;
        std::string m_base_url;
        std::string m_query_string;
        std::map<std::string, std::string> m_http_headers;

        unsigned int m_ping_interval;
        unsigned int m_ping_timeout;
        
        std::unique_ptr<std::thread> m_network_thread;
        
        packet_manager m_packet_mgr;
        
        std::unique_ptr<boost::asio::deadline_timer> m_ping_timer;
        
        std::unique_ptr<boost::asio::deadline_timer> m_ping_timeout_timer;

        std::unique_ptr<boost::asio::deadline_timer> m_reconn_timer;
        
        con_state m_con_state;
        
        client::con_listener m_open_listener;
        client::con_listener m_fail_listener;
        client::con_listener m_reconnecting_listener;
        client::reconnect_listener m_reconnect_listener;
        client::close_listener m_close_listener;
        
        client::socket_listener m_socket_open_listener;
        client::socket_listener m_socket_close_listener;
        
        std::map<const std::string,socket::ptr> m_sockets;
        
        std::mutex m_socket_mutex;

        unsigned m_reconn_delay;

        unsigned m_reconn_delay_max;

        unsigned m_reconn_attempts;

        unsigned m_reconn_made;
        
        friend class sio::client;
        friend class sio::socket;
    };
}
