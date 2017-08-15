# This Makefile will build the MinGW Win32 MDI Example application

# Object files to create for the executable
OBJS = obj/WinMain.o obj/MainWindow.o obj/MDIChildWindow.o obj/AboutDialog.o obj/Resource.o

# Warnings to be raised by the C compiler
WARNS = -Wall

# Names of tools to use when building
CC = gcc
RC = windres

# Compiler flags. Compile ANSI build only if CHARSET=ANSI.
ifeq (${CHARSET}, ANSI)
  CFLAGS = -O2 -std=c99 -D _WIN32_IE=0x0500 -D WINVER=0x0500 ${WARNS} -Iinclude
else
  CFLAGS = -O2 -std=c99 -D UNICODE -D _UNICODE -D _WIN32_IE=0x0500 -D WINVER=0x0500 ${WARNS} -Iinclude
endif

# Linker flags
LDFLAGS = -s -lcomctl32 -lcomdlg32 -Wl,--subsystem,windows

.PHONY: all clean

# Build executable by default
all: bin/Win32MDIApp.exe

# Delete all build output
clean:
	if exist bin\*  del /q bin\*
	if exist obj\*  del /q obj\*

# Create build output directories if they don't exist
bin obj:
	@if not exist "$@" mkdir "$@"

# Compile object files for executable
obj/%.o: src/%.c | obj
	${CC} ${CFLAGS} -c "$<" -o "$@"

# Build the resources
obj/Resource.o: res/Resource.rc res/Application.manifest res/Application.ico include/Resource.h | obj
	${RC} -I./include -I./res -i "$<" -o "$@"

# Build the exectuable
bin/Win32MDIApp.exe: ${OBJS} | bin
	${CC} -o "$@" ${OBJS} ${LDFLAGS}

# C header dependencies
obj/AboutDialog.o:    include/AboutDialog.h include/Resource.h include/Globals.h
obj/MainWindow.o:     include/MainWindow.h include/MDIChildWindow.h include/AboutDialog.h include/Resource.h include/Globals.h
obj/MDIChildWindow.o: include/MDIChildWindow.h include/MainWindow.h include/Resource.h include/Globals.h
obj/WinMain.o:        include/MainWindow.h include/MDIChildWindow.h include/Resource.h include/Globals.h
