#!/usr/bin/env bash
#

actual_output_path_string=$1;shift
original_input_file=$1;shift

# Before doing anything we append create a link to the input file in our working dir with ".pep.xml" appended to the input 
# name because peptide prophet can't handle anything else

wd=`pwd`

actual_input_path_string=$wd/`basename $original_input_file`.pep.xml

ln -s $original_input_file $actual_input_path_string

rvm 1.9.3@protk-1.2.2 do protein_prophet.rb $actual_input_path_string $@ -o protein_prophet_results.prot.xml

if [ -f protein_prophet_results.prot.xml ]; then
	sed -i.bak s%$actual_input_path_string%$original_input_file.pep.xml%g protein_prophet_results.prot.xml
fi

