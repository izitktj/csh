cmake_minimum_required(VERSION 3.5.0 FATAL_ERROR)
project(CShell VERSION 0.1.0)

add_executable(CShell
	src/main.c
	src/csh_vitals.c
	src/csh_vitals.h
)