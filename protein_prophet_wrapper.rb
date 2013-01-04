require 'pathname'

$VERBOSE=nil

protein_prophet_path=%x[which protein_prophet.rb]

actual_output_path_string=ARGV.shift

# Second argument is the original input file name ... we'll change this below
original_input_file=ARGV[0]

# Before doing anything we append create a link to the input file in our working dir with ".pep.xml" appended to the input 
# name because peptide prophet can't handle anything else

wd= Dir.pwd

original_input_path=Pathname.new("#{original_input_file}")
actual_input_path_string="#{wd}/#{original_input_path.basename}.pep.xml"

cmd = "ln -s #{original_input_file} #{actual_input_path_string};"

cmd << protein_prophet_path.chomp


ARGV[0]="#{actual_input_path_string}"

ARGV.each { |a| 
    
  cmd << " #{a}" 
}

cmd << " -o protein_prophet_results.prot.xml"

cmd << ";ruby -pi -e \"gsub('#{actual_input_path_string}', '#{original_input_file}.pep.xml')\" protein_prophet_results.prot.xml"

%x[#{cmd}]

