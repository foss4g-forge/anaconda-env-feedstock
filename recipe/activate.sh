#!/bin/bash

if [ "$(uname)" == "Darwin" ]
then
    # Only for Mac OSX
    # Add env vars not in conda-forge toolchain
    export AR=llvm-ar
    export AS=llvm-as

    export CLANG=clang
    export CLANGXX=clang++
    export CODESIGN_ALLOCATE=codesign_allocate
    export HOST=x86_64-apple-darwin13.4.0
    export INSTALL_NAME_TOOL=install_name_tool
    export LD=ld
    export LIBTOOL=libtool
    export LIPO=lipo
    export NM=llvm-nm
    export NMEDIT=nmedit
    export OTOOL=otool
    export PAGESTUFF=pagestuff
    export RANLIB=llvm-ranlib
    export REDO_PREBINDING=redo_prebinding
    export SIZE=llvm-size
    export STRINGS=llvm-strings
    export STRIP=strip


    # These are part of cctools, but not needed for regular builds
    export CHECKSYMS=
    export INDR=
    export SEGEDIT=segedit
    export SEG_ADDR_TABLE=
    export SEG_HACK=

else
    echo "This system is unsupported by the toolchain."
    exit 1
fi
