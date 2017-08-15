# MinGW Win32 MDI Application

## Table of Contents

- [Introduction](#introduction)
- [Terms of Use](#terms-of-use)
- [Problems?](#problems)
- [Changelog](#changelog)

## Introduction

This application is an example Windows MDI GUI application, written to demonstrate how this can be done using MinGW. It
accompanies the [Win32 Apps with MinGW](http://www.transmissionzero.co.uk/computing/win32-apps-with-mingw/) article on
[Transmission Zero](http://www.transmissionzero.co.uk/). The compiled application is a fully functional, with the
exception that opening and saving files does not read or write the files, and the MDI child windows do not have any code
to display documents. However, by adding this functionality you can quickly create a functioning MDI application.

To build the application on a Windows machine, open a command prompt, change to the directory containing the Makefile,
and type "mingw32-make". The application should be compiled, linked, and output as "bin\Win32MDIApp.exe".

To compile an ANSI build (i.e. if you want the application to run under Windows 9x), run "mingw32-make CHARSET=ANSI"
from the command prompt.

To build under another operating system, the Makefile will probably require some small changes. For example, under
Fedora the C compiler and resource compiler are named "i686-pc-mingw32-gcc" and "i686-pc-mingw32-windres". Also, your
version of the make utility may be named differently--please check the documentation which came with your MinGW
packages.

It should also be possible to build the application using any C or C++ compiler which supports targeting Windows, for
example Open Watcom. You will of course need to set the projects up for yourself if you do that. It can also be built
with Visual C++, however you are advised to use the
[MSVC Win32 MDI Application](https://github.com/TransmissionZero/MSVC-Win32-MDI-Application) because that's ready to use
with MSVC. No source code modifications are required if you want to build a 64 bit version of the application.

## Terms of Use

Refer to "License.txt" for terms of use.

## Problems?

If you have any problems or questions, please ensure you have read this readme file and the
[Win32 Apps with MinGW](http://www.transmissionzero.co.uk/computing/win32-apps-with-mingw/) article. If you are still
having trouble, you can [get in contact](http://www.transmissionzero.co.uk/contact/).

## Changelog

1. 2017-08-14: Version 1.0
  - Initial release.

Transmission Zero
2017-08-14
