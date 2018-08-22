def start
  puts '''Welcome, you have now entered Tim\'s first ever program where he actually
  implemented his thought and wrote out his actions on a piece of paper to write
  out a so called program thanks to Learn Ruby the Hard Way by Zed Shaw. As a Noob
  Rubyist, I will guide you in my pointless, yet somewhat educational program that
  will show you how to upload a file to github, if you already have a github repository
  that is, and upload a file to your repository. WOOHOO! Now, let\'s get started, shall we?
  '''

  puts "Too much text above right? Yes, or no?"

  print "> "
  too_much_text = $stdin.gets.chomp

  if too_much_text == "yes" || too_much_text == "no"
    puts "You are damn right! Now let's begin."
    second_step
  else
    puts "Come again with a yes or a no. Bye Felicia!"
    exit(0)
  end
end


# The first step would be to turn on your computer
def second_step
  puts "If you don't get this right then I don't know what to tell ya."
  puts "What is the first step we need to execute in order to upload a file to our Github repo?\n"
  puts "1. Turn on computer?"
  puts "2. Change into the proper directory?"

  print "> "
  second_input = $stdin.gets.chomp

  if second_input == "1" || second_input == "Turn on computer"
    puts "You are correct. Having your computer ON is a must."
    # call the next function
  else
    puts "I dont\'t know what to tell ya."
    exit(0)
  end

end

start
# Activate your preferred text editor via terminal hehe


# Create a new file and open it in your preferred text editor


# If 'touch test.txt' was typed in terminal then it is correct


# Then open test.txt with your preferred text editor with:  <application> test.txt


# Press Y or N to finish writing file which will save or close it


# Then open back up terminal


# Prompt the user to ask what is a way of uploading to github via terminal?


# First step, change directory to file, example could be `cd ~/desktop/test.txt'


# Question user with three options, A being do git status or B, git add <filename>.txt or C, git branch ???
# Use a conditional statement


# If A then go to check branch, if B 'try again', if C 'try again'
# Possibly hint at user the solution if failed to many times? (challenge)


# After adding ask user the proper syntax for committing, else prompt user to do research on how to do so at
# the actual URL of Github docs


# When everything is correct git push


# Once that is done prompt user with a completion
