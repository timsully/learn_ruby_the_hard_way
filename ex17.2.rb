# Study Drill 17.2. Make the script one line long
from_file, to_file = ARGV ; puts "Copy from #{from_file} to #{to_file}" ; in_file = open(from_file).read ; puts "The input file is #{in_file.length} bytes long" ; puts "Exists: #{File.exist?(to_file)}" ; puts "RETURN to continue, CTRL-C to abort." ; $stdin.gets ; out_file = open(to_file, 'w') ; out_file.write(in_file) ; out_file.close ; in_file.close
