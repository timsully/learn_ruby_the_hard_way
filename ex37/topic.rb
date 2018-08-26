# IMPORTANT: This code was copied from the repo https://github.com/sinclairtarget/um/tree/master/lib/um
# My only intention was to re-write the code as indicated in exercise
# 37 of Learn Ruby the Hard Way by Zed Shaw. I take non credit for this code.
# This is to study and gain a better understanding of how the program operates


require 'etc'
require 'fileutils'

module Topic
  def self.current(config)
    file_path = topic_file_path
    if File.exist? file_path
      read_topic(file_path)
    else
      default = config[:default_topic]
      write_topic(topic_file_path, default)
      default
    end
  end

  def self.set(topic)
    write_topic(topic_file_path, topic) unless topic.empty?
  end

  def self.clear
    file_path = topic_file_path
    File.delete file_path if File.exist? file_path
  end

  class << self
    private

    def topic_file_path
      tmp_dir_path = '/var/tmp/um/' + Etc.getlogin
      FileUtils.mkdir_p tmp_dir_path

      tmp_dir_path + '/current.topic'
    end

    def read_topic(path)
      line = File.readlines(path).first
      if line
        line.chomp
      else
        raise RuntimeError, 'Empty or corrupt .topic file'
      end
    end

    def write_topic(path, topic)
      File.write(path, topic)
    end
  end
end
