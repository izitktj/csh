# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\etec\Documents\projs\csh

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\etec\Documents\projs\csh\build

# Include any dependencies generated for this target.
include CMakeFiles/CShell.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CShell.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CShell.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CShell.dir/flags.make

CMakeFiles/CShell.dir/src/main.c.obj: CMakeFiles/CShell.dir/flags.make
CMakeFiles/CShell.dir/src/main.c.obj: C:/Users/etec/Documents/projs/csh/src/main.c
CMakeFiles/CShell.dir/src/main.c.obj: CMakeFiles/CShell.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\etec\Documents\projs\csh\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/CShell.dir/src/main.c.obj"
	D:\com\w64devkit\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/CShell.dir/src/main.c.obj -MF CMakeFiles\CShell.dir\src\main.c.obj.d -o CMakeFiles\CShell.dir\src\main.c.obj -c C:\Users\etec\Documents\projs\csh\src\main.c

CMakeFiles/CShell.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/CShell.dir/src/main.c.i"
	D:\com\w64devkit\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\etec\Documents\projs\csh\src\main.c > CMakeFiles\CShell.dir\src\main.c.i

CMakeFiles/CShell.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/CShell.dir/src/main.c.s"
	D:\com\w64devkit\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\etec\Documents\projs\csh\src\main.c -o CMakeFiles\CShell.dir\src\main.c.s

CMakeFiles/CShell.dir/src/csh_vitals.c.obj: CMakeFiles/CShell.dir/flags.make
CMakeFiles/CShell.dir/src/csh_vitals.c.obj: C:/Users/etec/Documents/projs/csh/src/csh_vitals.c
CMakeFiles/CShell.dir/src/csh_vitals.c.obj: CMakeFiles/CShell.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\etec\Documents\projs\csh\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/CShell.dir/src/csh_vitals.c.obj"
	D:\com\w64devkit\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/CShell.dir/src/csh_vitals.c.obj -MF CMakeFiles\CShell.dir\src\csh_vitals.c.obj.d -o CMakeFiles\CShell.dir\src\csh_vitals.c.obj -c C:\Users\etec\Documents\projs\csh\src\csh_vitals.c

CMakeFiles/CShell.dir/src/csh_vitals.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/CShell.dir/src/csh_vitals.c.i"
	D:\com\w64devkit\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\etec\Documents\projs\csh\src\csh_vitals.c > CMakeFiles\CShell.dir\src\csh_vitals.c.i

CMakeFiles/CShell.dir/src/csh_vitals.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/CShell.dir/src/csh_vitals.c.s"
	D:\com\w64devkit\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\etec\Documents\projs\csh\src\csh_vitals.c -o CMakeFiles\CShell.dir\src\csh_vitals.c.s

# Object files for target CShell
CShell_OBJECTS = \
"CMakeFiles/CShell.dir/src/main.c.obj" \
"CMakeFiles/CShell.dir/src/csh_vitals.c.obj"

# External object files for target CShell
CShell_EXTERNAL_OBJECTS =

CShell.exe: CMakeFiles/CShell.dir/src/main.c.obj
CShell.exe: CMakeFiles/CShell.dir/src/csh_vitals.c.obj
CShell.exe: CMakeFiles/CShell.dir/build.make
CShell.exe: CMakeFiles/CShell.dir/linkLibs.rsp
CShell.exe: CMakeFiles/CShell.dir/objects1.rsp
CShell.exe: CMakeFiles/CShell.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\etec\Documents\projs\csh\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable CShell.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CShell.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CShell.dir/build: CShell.exe
.PHONY : CMakeFiles/CShell.dir/build

CMakeFiles/CShell.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CShell.dir\cmake_clean.cmake
.PHONY : CMakeFiles/CShell.dir/clean

CMakeFiles/CShell.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\etec\Documents\projs\csh C:\Users\etec\Documents\projs\csh C:\Users\etec\Documents\projs\csh\build C:\Users\etec\Documents\projs\csh\build C:\Users\etec\Documents\projs\csh\build\CMakeFiles\CShell.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/CShell.dir/depend

