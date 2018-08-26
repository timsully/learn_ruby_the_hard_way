# IMPORTANT: This code was copied from the repo https://github.com/sinclairtarget/um/tree/master/lib/um
# My only intention was to re-write the code as indicated in exercise
# 37 of Learn Ruby the Hard Way by Zed Shaw. I take non credit for this code.
# This is to study and gain a better understanding of how the program operates


require 'time'
require 'date'

# template preprocessor
module Preprocessor
  def self.preprocess(template, page_name, topic)
    template.gsub(/\$\w+/) do |match|
      case match
      when '$name'
        page_name
      when '$NAME'
        page_name.upcase
      when '$topic'
        topic
      when '$time'
        Time.now.rfc2822
      when '$date'
        Date.today.strftime("%B %d, %Y")
      else
        match
      end
    end
  end
end
