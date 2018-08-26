# IMPORTANT: This code was copied from the repo https://github.com/sinclairtarget/um/tree/master/lib/um
# My only intention was to re-write the code as indicated in exercise
# 37 of Learn Ruby the Hard Way by Zed Shaw. I take non credit for this code.
# This is to study and gain a better understanding of how the program operates


require 'optparse'

# Thin wrapper for optparse
class Options
  def initialize(parser, set_options)
    @parser = parser
    @set_options = set_options
  end

  def available
    @parser
  end

  def [](key)
    @set_options[key]
  end

  def self.parse!
    set_options = {}

    opt_parser = OptionParser.new do |opts|
      yield opts, set_options
    end

    begin
      opts_parser.parse! ARGV
    rescue OptionParser::InvalidOption => e
      $stderr.puts e
      $stderr.puts opts_parser
      exit 1
    end

    Options.new opts_parser, set_options
  end
end
