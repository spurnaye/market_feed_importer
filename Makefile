# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aarna/devel/trading_system/market_feed_importer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aarna/devel/trading_system/market_feed_importer

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/local/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/aarna/devel/trading_system/market_feed_importer/CMakeFiles /home/aarna/devel/trading_system/market_feed_importer/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/aarna/devel/trading_system/market_feed_importer/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named iex_websocket_api

# Build rule for target.
iex_websocket_api: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 iex_websocket_api
.PHONY : iex_websocket_api

# fast build rule for target.
iex_websocket_api/fast:
	$(MAKE) -f CMakeFiles/iex_websocket_api.dir/build.make CMakeFiles/iex_websocket_api.dir/build
.PHONY : iex_websocket_api/fast

#=============================================================================
# Target rules for targets named sioclient_tls

# Build rule for target.
sioclient_tls: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 sioclient_tls
.PHONY : sioclient_tls

# fast build rule for target.
sioclient_tls/fast:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/build
.PHONY : sioclient_tls/fast

socket_io/internal/sio_client_impl.o: socket_io/internal/sio_client_impl.cpp.o

.PHONY : socket_io/internal/sio_client_impl.o

# target to build an object file
socket_io/internal/sio_client_impl.cpp.o:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/socket_io/internal/sio_client_impl.cpp.o
.PHONY : socket_io/internal/sio_client_impl.cpp.o

socket_io/internal/sio_client_impl.i: socket_io/internal/sio_client_impl.cpp.i

.PHONY : socket_io/internal/sio_client_impl.i

# target to preprocess a source file
socket_io/internal/sio_client_impl.cpp.i:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/socket_io/internal/sio_client_impl.cpp.i
.PHONY : socket_io/internal/sio_client_impl.cpp.i

socket_io/internal/sio_client_impl.s: socket_io/internal/sio_client_impl.cpp.s

.PHONY : socket_io/internal/sio_client_impl.s

# target to generate assembly for a file
socket_io/internal/sio_client_impl.cpp.s:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/socket_io/internal/sio_client_impl.cpp.s
.PHONY : socket_io/internal/sio_client_impl.cpp.s

socket_io/internal/sio_packet.o: socket_io/internal/sio_packet.cpp.o

.PHONY : socket_io/internal/sio_packet.o

# target to build an object file
socket_io/internal/sio_packet.cpp.o:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/socket_io/internal/sio_packet.cpp.o
.PHONY : socket_io/internal/sio_packet.cpp.o

socket_io/internal/sio_packet.i: socket_io/internal/sio_packet.cpp.i

.PHONY : socket_io/internal/sio_packet.i

# target to preprocess a source file
socket_io/internal/sio_packet.cpp.i:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/socket_io/internal/sio_packet.cpp.i
.PHONY : socket_io/internal/sio_packet.cpp.i

socket_io/internal/sio_packet.s: socket_io/internal/sio_packet.cpp.s

.PHONY : socket_io/internal/sio_packet.s

# target to generate assembly for a file
socket_io/internal/sio_packet.cpp.s:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/socket_io/internal/sio_packet.cpp.s
.PHONY : socket_io/internal/sio_packet.cpp.s

socket_io/sio_client.o: socket_io/sio_client.cpp.o

.PHONY : socket_io/sio_client.o

# target to build an object file
socket_io/sio_client.cpp.o:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/socket_io/sio_client.cpp.o
.PHONY : socket_io/sio_client.cpp.o

socket_io/sio_client.i: socket_io/sio_client.cpp.i

.PHONY : socket_io/sio_client.i

# target to preprocess a source file
socket_io/sio_client.cpp.i:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/socket_io/sio_client.cpp.i
.PHONY : socket_io/sio_client.cpp.i

socket_io/sio_client.s: socket_io/sio_client.cpp.s

.PHONY : socket_io/sio_client.s

# target to generate assembly for a file
socket_io/sio_client.cpp.s:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/socket_io/sio_client.cpp.s
.PHONY : socket_io/sio_client.cpp.s

socket_io/sio_socket.o: socket_io/sio_socket.cpp.o

.PHONY : socket_io/sio_socket.o

# target to build an object file
socket_io/sio_socket.cpp.o:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/socket_io/sio_socket.cpp.o
.PHONY : socket_io/sio_socket.cpp.o

socket_io/sio_socket.i: socket_io/sio_socket.cpp.i

.PHONY : socket_io/sio_socket.i

# target to preprocess a source file
socket_io/sio_socket.cpp.i:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/socket_io/sio_socket.cpp.i
.PHONY : socket_io/sio_socket.cpp.i

socket_io/sio_socket.s: socket_io/sio_socket.cpp.s

.PHONY : socket_io/sio_socket.s

# target to generate assembly for a file
socket_io/sio_socket.cpp.s:
	$(MAKE) -f CMakeFiles/sioclient_tls.dir/build.make CMakeFiles/sioclient_tls.dir/socket_io/sio_socket.cpp.s
.PHONY : socket_io/sio_socket.cpp.s

src/main.o: src/main.cpp.o

.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) -f CMakeFiles/iex_websocket_api.dir/build.make CMakeFiles/iex_websocket_api.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i

.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) -f CMakeFiles/iex_websocket_api.dir/build.make CMakeFiles/iex_websocket_api.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s

.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) -f CMakeFiles/iex_websocket_api.dir/build.make CMakeFiles/iex_websocket_api.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... install"
	@echo "... list_install_components"
	@echo "... install/strip"
	@echo "... install/local"
	@echo "... iex_websocket_api"
	@echo "... edit_cache"
	@echo "... sioclient_tls"
	@echo "... rebuild_cache"
	@echo "... socket_io/internal/sio_client_impl.o"
	@echo "... socket_io/internal/sio_client_impl.i"
	@echo "... socket_io/internal/sio_client_impl.s"
	@echo "... socket_io/internal/sio_packet.o"
	@echo "... socket_io/internal/sio_packet.i"
	@echo "... socket_io/internal/sio_packet.s"
	@echo "... socket_io/sio_client.o"
	@echo "... socket_io/sio_client.i"
	@echo "... socket_io/sio_client.s"
	@echo "... socket_io/sio_socket.o"
	@echo "... socket_io/sio_socket.i"
	@echo "... socket_io/sio_socket.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

