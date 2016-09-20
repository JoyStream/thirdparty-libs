#!/bin/bash

#get library versions
. versions.sh

#downloader function
function download () {
  if [ ! -e "${1}" ]
  then
  echo "Downloding ${1}"
  if wget -O ${1} ${2}
    then
        echo "${1} Downloaded"
    else
        echo "Error Downloading: ${1}"
        rm ${1}
        exit 1
  fi
  fi
}

download "${OPENSSL_TARBALL}" "https://www.openssl.org/source/${OPENSSL_TARBALL}"

download "${LIB_BOOST_TARBALL}" "http://sourceforge.net/projects/boost/files/boost/${LIB_BOOST_VERSION}/${LIB_BOOST_TARBALL}/download"

download "${LIBTORRENT_TARBALL}" "https://github.com/arvidn/libtorrent/archive/${LIBTORRENT_TARBALL}"

download "${ODB_COMPILER_OSX_TARBALL}" "http://www.codesynthesis.com/download/odb/2.4/${ODB_COMPILER_OSX_TARBALL}"

download "${ODB_COMPILER_LINUX}" "http://www.codesynthesis.com/download/odb/2.4/${ODB_COMPILER_LINUX}"

download "${ODB_RUNTIME_TARBALL}" "http://www.codesynthesis.com/download/odb/2.4/${ODB_RUNTIME_TARBALL}"

download "${ODB_SQLITE_RUNTIME_TARBALL}" "http://www.codesynthesis.com/download/odb/2.4/${ODB_SQLITE_RUNTIME_TARBALL}"

download "${LIBPNG_TARBALL}" "ftp://ftp.simplesystems.org/pub/libpng/png/src/libpng16/${LIBPNG_TARBALL}"

download "${SQLITE_TARBALL}" "https://www.sqlite.org/2015/${SQLITE_TARBALL}"

download "${ZLIB_TARBALL}" "http://zlib.net/${ZLIB_TARBALL}"
