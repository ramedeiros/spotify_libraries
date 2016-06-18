#!/bin/bash

if ! [ -d ~/.local/share/applications ] ; then
   mkdir -p ~/.local/share/applications
fi

# Absolute path to this script
SCRIPT=$(readlink -f $0)
# Absolute path this script is in
INSTALLDIR=$(dirname $SCRIPT)

cp ${INSTALLDIR}/spotify-wrapper-stub.desktop ~/.local/share/applications/spotify-wrapper.desktop

echo Exec=${INSTALLDIR}/spotify-wrapper %U >> ~/.local/share/applications/spotify-wrapper.desktop
echo TryExec=${INSTALLDIR}/spotify-wrapper >> ~/.local/share/applications/spotify-wrapper.desktop
