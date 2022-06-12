Introduction
============

 Nover is a file browser for the terminal. Fork of rover with features of nnn.

![Rover screenshot](/../screenshots/screenshot.png?raw=true "Screenshot")

 The main goal is to provide a less bloated file manager to nnn users with same functionality

Quick Start
===========

 Building and Installing:
 ```
 make
 sudo make install
 ```

 Running:
 ```
 nover [DIR1 [DIR2 [DIR3 [...]]]]
 ```

 Basic Usage:
 ```
       q - quit
       ? - show manual
     j/k - move cursor down/up
     J/K - move cursor down/up 10 lines
     g/G - move cursor to top/bottom of listing
       l - enter selected directory
       h - go to parent directory
       ~ - go to $HOME directory
     0-9 - change tab
  RETURN - open $SHELL on the current directory
   SPACE - open $PAGER with the selected file
       e - open $VISUAL or $EDITOR with the selected file
       / - start incremental search (RETURN to finish)
     n/N - create new file/directory
       R - rename selected file or directory
       D - delete selected file or (empty) directory
 ```

 Please read nover(1) for more information.


Requirements
============

 * Unix-like system;
 * curses library.
 * dragon (optional, used for drag&drop)

Configuration
=============

 nover configuration (mostly key bindings and colors) can only be changed by
editing the file `config.h` and rebuilding the binary.

 Note that the external programs executed by some Rover commands may be changed
via the appropriate environment variables. For example, to specify an editor:
 ```
 $ VISUAL=vi nover
 ```

 Rover will first check for variables prefixed  with ROVER_. This can be used to
change Rover behavior without interfering with the global environment:
 ```
 $ NOVER_VISUAL=vi nover
 ```

 Please read nover(1) for more information.


License
=======

Under GPL3
