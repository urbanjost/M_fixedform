# Work-In-Progress
   
   Ideas on how to simplify creating a TDI with Ncurses from Fortran. That
   is, create simple forms in terminal windows.

   The idea is based on fuzzy memories of the CDC NOS TDU Fortran
   interface and CCL where a simple text representation of a form plus
   some simple descriptions could be turned into a screen-mode interface
   from Fortran.

   Still in beta so subject to change. Probably at least needs scrolling
   input fields and pull-down menus.

   A sample input file that describes the interface that uses the interface
   to generate an HTML output file is in
   [paper0001](https://urbanjost.github.io/M_fixedform/paper0001.html) 


## ![M_fixedform](docs/images/id.gif)

## Name
   M_fixedform(3f) - use M_ncurses to generated fixed forms
   (LICENSE:MIT)
## Synopsis
```text
       use M_fixedform
```
## Description

---
![gmake](docs/images/gnu.gif)
---
## Building the Module using make(1)
     git clone https://github.com/urbanjost/M_fixedform.git
     cd M_fixedform/src
     # change Makefile if not using one of the listed compilers
     
     # for gfortran
     make clean
     make F90=gfortran gfortran
     
     # for ifort
     make clean
     make F90=ifort ifort

     # for nvfortran
     make clean
     make F90=nvfortran nvfortran

This will compile the Fortran module and basic example
program that exercise the routine.

---
![-](docs/images/fpm_logo.gif)
---
## Build and Test with FPM

   Alternatively, download the github repository and build it with
   fpm ( as described at [Fortran Package Manager](https://github.com/fortran-lang/fpm) )

   ```bash
        git clone https://github.com/urbanjost/M_fixedform.git
        cd M_fixedform
        fpm run "*"
        fpm run --example "*"
        fpm test
   ```

   or just list it as a dependency in your fpm.toml project file.

```toml
        [dependencies]
        M_fixedform        = { git = "https://github.com/urbanjost/M_fixedform.git" }
```
---
![docs](docs/images/docs.gif)
---
## Documentation

### User
   - A single page that uses javascript to combine all the HTML
     descriptions of the man-pages is at 
     [BOOK_M_fixedform](https://urbanjost.github.io/M_fixedform/BOOK_M_fixedform.html).

   - a simple index to the man-pages in HTML form for the
   [routines](https://urbanjost.github.io/M_fixedform/man3.html) 
   and [programs](https://urbanjost.github.io/M_fixedform/man1.html) 

   - There are man-pages in the repository download in the docs/ directory
     that may be installed on ULS (Unix-Like Systems).

   - ![man-pages](docs/images/manpages.gif)
      + [manpages.zip](https://urbanjost.github.io/M_fixedform/manpages.zip)
      + [manpages.tgz](https://urbanjost.github.io/M_fixedform/manpages.tgz)

   - [CHANGELOG](docs/CHANGELOG.md) provides a history of significant changes

### Developer
   - [ford(1) output](https://urbanjost.github.io/M_fixedform/fpm-ford/index.html).
<!--
   - [doxygen(1) output](https://urbanjost.github.io/M_fixedform/doxygen_out/html/index.html).
-->
   - [github action status](docs/STATUS.md) 
---
![-](docs/images/ref.gif)
---
