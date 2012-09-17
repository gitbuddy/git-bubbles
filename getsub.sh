#! /bin/bash

# Basic script to dump subtitle track from mkv files into .idx/.sub files for 
# ocr to srt format.
# There are only basic checks on whether the file is Matroska and has subtitles.
# This is meant for vobsub subtitles and hasn't been tested on muxed srt 
# subtitles. Any subtitle formats other than vobsubs should just be dumped with 
# the .sub extension.
# 
# WARNING: Use at your own risk
#
# Feel free to modify but please have the grace to feed back any improvements to
# the community via the source that this was obtained.
#
# Inspired by the mkvdts2ac script by Jake Wharton & Chris Hoekstra
#
# Usage is "./getsub $i /var/www/public"
# Requires mkvmerge and mkvextract
#
# Darren Faulke, a noob script writer

VERSION="1.0"
DATE="04/August/2010"

# input file
INPUTFILE=$1
FILENAME=$(basename "$INPUTFILE")

# path to output
OUTPUT=$2
OUTPUTFOLDER=$(basename "$OUTPUT")

# output file
OUTFILE=$(basename "$INPUTFILE" .mkv)
OUTFILE="${OUTPUTFOLDER}""/""${OUTFILE}.sub"

echo "checking "$FILENAME "......"
echo

# check if the container is Matroska

if [ "$(mkvmerge -i "$INPUTFILE" | grep -i "Matroska")" ]; then
	echo "container appears to be Matroska"

# check if the file contains subtitles

	if [ "$(mkvmerge -i "$INPUTFILE" | grep -i "subtitle")" ]; then
		SUBTRACK=$(mkvmerge -i "$INPUTFILE" | grep -m 1 "subtitles" | cut -d ":" -f 1 | cut -d " " -f 3)
		echo "track "$SUBTRACK "is a subtitle track"
		echo
		mkvextract tracks $INPUTFILE $SUBTRACK:$OUTFILE
		echo
		echo "done"
		echo
	else
		echo
		echo "there is no subtitle track - skipping"
	fi
else
	echo
	echo "container doesn't appear to be Matroska - skipping"	
fi






