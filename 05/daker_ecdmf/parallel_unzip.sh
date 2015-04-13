#! /bin/bash
#
# parallel_unzip.sh
# Copyright (C) 2015 Daker Fernandes and Emiliano Firmino
#
# Distributed under terms of the MIT license.
#

for zip in *.zip; do
    if mkdir ${zip%.*}; then
        if cd ${zip%.*}; then
            ../libzip_simple ../$zip > /dev/null &
            cd ..
        fi
    fi
done
