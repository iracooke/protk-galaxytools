require 'pathname'

$VERBOSE=nil

actual_output_path_string=ARGV.shift

# Second argument is the original input file name ... we'll change this below
original_input_file=ARGV[0]

# Before doing anything we append create a link to the input file in our working dir with ".pep.xml" appended to the input 
# name because peptide prophet can't handle anything else

wd= Dir.pwd

original_input_path=Pathname.new("#{original_input_file}")
actual_input_path_string="#{wd}/#{original_input_path.basename}.pep.xml"
full_tmp_output_path_string="#{wd}/peptide_prophet_output.pep.xml"

cmd = "ln -s #{original_input_file} #{actual_input_path_string};"

cmd << "rvm 1.9.3@protk-1.2.0 do peptide_prophet.rb"


ARGV[0]="#{actual_input_path_string}"

ARGV.each { |a|    
  cmd << " #{a}" 
}

cmd << " -o peptide_prophet_output.pep.xml"

# Finally we need to fix up the output file so any references to the temporary working file are changed to refs to the original input file
cmd << ";ruby -pi -e \"gsub('#{actual_input_path_string}', '#{original_input_file}')\" peptide_prophet_output.pep.xml"
cmd << ";ruby -pi -e \"gsub('#{full_tmp_output_path_string}', '#{actual_output_path_string}')\" peptide_prophet_output.pep.xml"

p %x[#{cmd}]
