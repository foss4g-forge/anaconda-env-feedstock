#!/bin/bash

if [ "$(uname)" == "Darwin" ]
then
    # Only for Mac OSX    
    # Add env vars not in conda-forge toolchain
    export AR=ar
    export AS=as
    
    export CLANG=clang
    export CLANGXX=clang++
    export CODESIGN_ALLOCATE=codesign_allocate
    export HOST=x86_64-apple-darwin13.4.0
    export INSTALL_NAME_TOOL=install_name_tool
    export LD=ld
    export LIBTOOL=libtool
    export LIPO=lipo
    export NM=nm
    export NMEDIT=nmedit
    export OTOOL=otool
    export PAGESTUFF=pagestuff
    export RANLIB=ranlib
    export REDO_PREBINDING=redo_prebinding
    export SEGEDIT=segedit
    export SIZE=size
    export STRINGS=strings
    export STRIP=strip
    
    
    # These are part of cctools, but not needed for regular builds
    export CHECKSYMS=
    export INDR=
    export SEG_ADDR_TABLE=
    export SEG_HACK=

else
    echo "This system is unsupported by the toolchain."
    exit 1
fi
