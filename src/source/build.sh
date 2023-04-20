#!/bin/bash
cd $(dirname $0)
export GITHUB=TRUE
export DEMO_OUTDIR=../../example
export DEMO_SUBDIR=FALSE

prep F90 TESTPRG90 --comment doxygen --verbose -i ../../app/choose.[fF][fF]    -o ../../app/choose.f90
prep F90 TESTPRG90 --comment doxygen --verbose -i ../../app/esc.[fF][fF]       -o ../../app/esc.f90
prep F90 TESTPRG90 --comment doxygen --verbose -i ../../app/fixedform.[fF][fF] -o ../../app/fixedform.f90
prep F90 TESTPRG90 --comment doxygen --verbose -i ../../app/nc2html.[fF][fF]   -o ../../app/nc2html.f90

GPF_build_module M_fixedform
#cp ../../docs/man3.html ../../docs/index.html
#cp ../../docs/BOOK_M_fixedform.html ../../docs/index.html
ccall ../../test/test_suite_M_fixedform.[fF]90
exit
