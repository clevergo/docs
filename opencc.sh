#!/bin/bash
inputDir="content/zh"
outputDir="content/zh-hant"
files=`find $inputDir -type f -name '*'`
for file in $files
do
    output="${file/$inputDir/$outputDir}"
    dir=$(dirname $output)
    [ ! -d "$dir" ] && mkdir -p "$dir"
	opencc -i $file -c s2t -o $output
done