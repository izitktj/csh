# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/Gustavo/Documents/projs/archCsh

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Gustavo/Documents/projs/archCsh/build

# Include any dependencies generated for this target.
include CMakeFiles/CShell.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CShell.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CShell.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CShell.dir/flags.make

CMakeFiles/CShell.dir/src/main.c.o: CMakeFiles/CShell.dir/flags.make
CMakeFiles/CShell.dir/src/main.c.o: /mnt/c/Users/Gustavo/Documents/projs/archCsh/src/main.c
CMakeFiles/CShell.dir/src/main.c.o: CMakeFiles/CShell.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/c/Users/Gustavo/Documents/projs/archCsh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/CShell.dir/src/main.c.o"
	/usr/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/CShell.dir/src/main.c.o -MF CMakeFiles/CShell.dir/src/main.c.o.d -o CMakeFiles/CShell.dir/src/main.c.o -c /mnt/c/Users/Gustavo/Documents/projs/archCsh/src/main.c

CMakeFiles/CShell.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/CShell.dir/src/main.c.i"
	/usr/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/Gustavo/Documents/projs/archCsh/src/main.c > CMakeFiles/CShell.dir/src/main.c.i

CMakeFiles/CShell.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/CShell.dir/src/main.c.s"
	/usr/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/Gustavo/Documents/projs/archCsh/src/main.c -o CMakeFiles/CShell.dir/src/main.c.s

CMakeFiles/CShell.dir/src/csh_vitals.c.o: CMakeFiles/CShell.dir/flags.make
CMakeFiles/CShell.dir/src/csh_vitals.c.o: /mnt/c/Users/Gustavo/Documents/projs/archCsh/src/csh_vitals.c
CMakeFiles/CShell.dir/src/csh_vitals.c.o: CMakeFiles/CShell.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/c/Users/Gustavo/Documents/projs/archCsh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/CShell.dir/src/csh_vitals.c.o"
	/usr/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/CShell.dir/src/csh_vitals.c.o -MF CMakeFiles/CShell.dir/src/csh_vitals.c.o.d -o CMakeFiles/CShell.dir/src/csh_vitals.c.o -c /mnt/c/Users/Gustavo/Documents/projs/archCsh/src/csh_vitals.c

CMakeFiles/CShell.dir/src/csh_vitals.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/CShell.dir/src/csh_vitals.c.i"
	/usr/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/Gustavo/Documents/projs/archCsh/src/csh_vitals.c > CMakeFiles/CShell.dir/src/csh_vitals.c.i

CMakeFiles/CShell.dir/src/csh_vitals.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/CShell.dir/src/csh_vitals.c.s"
	/usr/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/Gustavo/Documents/projs/archCsh/src/csh_vitals.c -o CMakeFiles/CShell.dir/src/csh_vitals.c.s

# Object files for target CShell
CShell_OBJECTS = \
"CMakeFiles/CShell.dir/src/main.c.o" \
"CMakeFiles/CShell.dir/src/csh_vitals.c.o"

# External object files for target CShell
CShell_EXTERNAL_OBJECTS =

CShell: CMakeFiles/CShell.dir/src/main.c.o
CShell: CMakeFiles/CShell.dir/src/csh_vitals.c.o
CShell: CMakeFiles/CShell.dir/build.make
CShell: CMakeFiles/CShell.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/c/Users/Gustavo/Documents/projs/archCsh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable CShell"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CShell.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CShell.dir/build: CShell
.PHONY : CMakeFiles/CShell.dir/build

CMakeFiles/CShell.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CShell.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CShell.dir/clean

CMakeFiles/CShell.dir/depend:
	cd /mnt/c/Users/Gustavo/Documents/projs/archCsh/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Gustavo/Documents/projs/archCsh /mnt/c/Users/Gustavo/Documents/projs/archCsh /mnt/c/Users/Gustavo/Documents/projs/archCsh/build /mnt/c/Users/Gustavo/Documents/projs/archCsh/build /mnt/c/Users/Gustavo/Documents/projs/archCsh/build/CMakeFiles/CShell.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/CShell.dir/depend

