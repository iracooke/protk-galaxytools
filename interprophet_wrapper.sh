#!/usr/bin/env bash
#

# Hard-Coded argument order
# Args 0-4 are like (eg --no-nss)
# Args 5 and 6 are like (eg --minprob 0.5)
# Remaining args are filenames
#
actual_output_path_string=$1;shift
for i in {0 1 2 3 4}; do
	if [ $1 != "blank" ]; then cmd_args[$i]=$1; fi;shift
done	
cmd_args+=($1);shift
cmd_args+=($1);shift

wd=`pwd`

for original_input_file in $@; do
	input_file_name=`basename $original_input_file`
	actual_input_path_string=$wd/$input_file_name.pep.xml
	ln -s $original_input_file $actual_input_path_string
	cmd_args+=($actual_input_path_string)
done

rvm 1.9.3@protk-1.2.2 do interprophet.rb ${cmd_args[@]} -o interprophet_output.pep.xml -r;

if [ -f interprophet_output.pep.xml ]; then
	for original_input_file in $@; do
		actual_input_path_string=$wd/`basename $original_input_file`.pep.xml
		sed -i.bak s%$actual_input_path_string%$original_input_file%g interprophet_output.pep.xml
	done
fi

