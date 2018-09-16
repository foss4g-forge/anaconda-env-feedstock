#!/bin/bash

if [ "$(uname)" == "Darwin" ];
then
    # Only for Mac OSX
    # Remove env vars not in conda-forge toolchain
    unset AR
    unset AS
    
    unset CLANG
    unset CLANGXX
    unset CODESIGN_ALLOCATE
    unset HOST
    unset INSTALL_NAME_TOOL
    unset LD
    unset LIBTOOL
    unset LIPO
    unset NM
    unset NMEDIT
    unset OTOOL
    unset PAGESTUFF
    unset RANLIB
    unset REDO_PREBINDING
    unset SEGEDIT
    unset SIZE
    unset STRINGS
    unset STRIP
    
    # Remove env vars, which are part of cctools, though not needed
    unset CHECKSYMS
    unset INDR
    unset SEG_ADDR_TABLE
    unset SEG_HACK
    
    # A fixup for conda-forge
    unset CPPFLAGS
else
    echo "This system is unsupported by our toolchain."
    exit 1
fi
