#!/bin/bash
if [[ $EUID -eq 0 ]]; then
    error "Do not run this as the root user"
    exit 1
fi
REPO=https://github.com/rghose/dot-files
FOLDER=$(basename $REPO)
current_dir=`pwd`
echo "Creating temporary space"
dir=`mktemp -d`
cd $dir
echo "Downloading files from $REPO"
git clone $REPO
echo "Download completed, preparing to install"
if [ ! -e "$FOLDER" ]; then
	error "Could not find $FOLDER folder - download failed"
	exit 1
fi
cd dot-files
chmod +x install.sh
./install.sh
cd $current_dir
echo "Installtion complete, cleaning up downloaded files"
rm -rf $dir

