require 'pathname'

$VERBOSE=nil

# Hard-Coded argument order and number of arguments
#
actual_output_path_string=ARGV[0]
use_nss=ARGV[1]
use_nrs=ARGV[2]
use_nse=ARGV[3]
use_nsi=ARGV[4]
use_nsm=ARGV[5]
minprob=ARGV[6]
minprob_val=ARGV[7]

wd= Dir.pwd
original_input_files=ARGV.drop(7)
# End hard coded args #

cmd=""

output_substitution_cmds=""

input_files=original_input_files.collect do |input|

  # We append ".pep.xml" to the input file name because interprophet can't handle anything else
  # In order for this to work properly we need to create a symbolic link our working directory
  #
  original_input_path=Pathname.new("#{input}")
  actual_input_path_string="#{wd}/#{original_input_path.basename}.pep.xml"

  cmd << "ln -s #{input} #{actual_input_path_string};"
  output_substitution_cmds << "ruby -pi -e \"gsub('#{actual_input_path_string}', '#{input}.pep.xml')\" interprophet_output.pep.xml;"
  actual_input_path_string
end

cmd << "rvm 1.9.3@protk-1.2.0 do interprophet.rb"

cmd << " --no-nss" unless use_nss=="blank"
cmd << " --no-nrs" unless use_nrs=="blank"
cmd << " --no-nse" unless use_nse=="blank"
cmd << " --no-nsi" unless use_nsi=="blank"
cmd << " --no-nsm" unless use_nsm=="blank"


input_files.each { |input|
  cmd << " #{input}"
}


cmd << " -o interprophet_output.pep.xml -r"

cmd << ";#{output_substitution_cmds}"

%x[#{cmd}]

