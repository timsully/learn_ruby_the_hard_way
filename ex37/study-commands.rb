# IMPORTANT: This code was copied from the repo https://github.com/sinclairtarget/um/tree/master/lib/um
# My only intention was to re-write the code as indicated in exercise
# 37 of Learn Ruby the Hard Way by Zed Shaw. I take non credit for this code.
# This is to study and gain a better understanding of how the program operates


module Commands
  LIBEXEC_FILENAME_FORMAT = 'um-%s.rb'.freeze

  ALIASES = {
    'l' => 'list',
    'r' => 'read',
    'e' => 'edit',
    's' => 'edit',
    'set' => 'edit',
    't' => 'topic',
    'c' => 'config',
    'h' => 'help'
  }.freeze

  # Executes the right Ruby file for the given command.
  def self.libexec(cmd)
    file_path = file_path_for_command(cmd)

    if file_path
      ARGV.shift
      run file_path
    else
      run file_path_for_command('read')
    end
  end

  def self.file_path_for_command(cmd)
    cmd = resolve_alias(cmd) || cmd
    dir = File.expand_path("../../libexec", File.dirname(__FILE__))
    filename = LIBEXEC_FILENAME_FORMAT % [cmd]
    path = "#{dir}/#{filename}"

    if File.exist?(path)
      path
    else
      nil
    end
  end

  class << self
    private

    def resolve_alias(cmd)
      ALIASES[cmd]
    end

    def run(file_path)
      exec(%{ruby "#{file_path}" #{ARGV.join(" ")}})
    end
  end
end
