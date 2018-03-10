#!/bin/bash

exiftool -overwrite_original -m -AllDates-="0 1" *.* -if '$make eq "NIKON CORPORATION"' dir

exiftool | grep "Date/Time Original" && \
exiftool | grep -i make