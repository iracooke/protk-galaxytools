#!/usr/bin/env bash

actual_output_path_string=$1;shift

original_input_file=$1;shift

# Before doing anything we append create a link to the input file in our working dir with ".pep.xml" appended to the input 
# name because peptide prophet can't handle anything else

wd=`pwd`

actual_input_path_string=$wd/`basename $original_input_file`.pep.xml

full_tmp_output_path_string=$wd/peptide_prophet_output.pep.xml

ln -s $original_input_file $actual_input_path_string


rvm 1.9.3@protk-1.2.2 do peptide_prophet.rb $actual_input_path_string $@ -o peptide_prophet_output.pep.xml;

sed -i.bak s%$actual_input_path_string%$original_input_file%g peptide_prophet_output.pep.xml
sed -i.bak s%$full_tmp_output_path_string%$actual_output_path_string%g peptide_prophet_output.pep.xml

