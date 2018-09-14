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
    third_step
  else
    puts "I dont\'t know what to tell ya."
    exit(0)
  end

end


# Activate your preferred text editor via terminal hehe
def third_step
  puts "So now what? You have your computer turned on, but you need a file to add to your repository.\n"
  puts '''How do we got about this? Well, here is one way on macOS. My apologies to the other operating systems
  out and about this program is not intended for you, but similar approaches may apply.'''

  puts "\nNow open your terminal"
  print "> "
  open_terminal = $stdin.gets.chomp

  if open_terminal == "open terminal" || open_terminal == "open" || open_terminal == "open sesame" || open_terminal == "abracadabra"
    puts "Opening Terminal..."
    sleep(2)
    puts "Terminal Open! Great Job!"
    fourth_step
  else
    puts "You need to open your terminal brah."
    sleep(1)
    puts "Shutting"
    sleep(1)
    puts "Off"
    sleep(1)
    puts "Now"
    sleep(2)
    puts "NOOB!"
  end

end


# Create a new file and open it in your preferred text editor
def fourth_step
  puts "In your terminal change your directory to your repository aka repo."
  puts "\nType cd ~/repo"

  print "> "
  change_dir = $stdin.gets.chomp

  if change_dir == "cd ~/repo"
    puts "repo: "
    fifth_step
  else
    puts "Incorrect, try again."
    fourth_step
  end

end


# If 'touch test.txt' was typed in terminal then it is correct
# Then open test.txt with your preferred text editor with:  <application> test.txt
def fifth_step
  puts "Now you're in your repo"
  puts "\nNext, let's create a file."
  puts "\nType touch test.txt"

  print "repo: "
  touch_file = $stdin.gets.chomp

  if touch_file == "touch test.txt"
    puts "Bingo!"
    sleep(0.5)
    puts "test.txt created"
    # call sixth_step
  else
    puts "-------------------------------"
    puts "Syntax error. Please try again."
    puts "CTRL + C to quit"
    fifth_step
    return
  end

  puts "Now let's open your test.txt file and write some stuff to it"
  puts "\nType the following: <texteditor> test.txt"
  print "repo: "
  rwx_file = $stdin.gets.chomp

  if rwx_file == "test.txt" || rwx_file == "atom test.txt"
    puts "Opening test.txt in the text editor of your choice..."
    sleep(0.2)
    puts "Opening text editor"
    sleep(0.2)
    puts "Vuala! You have opened your text file."
    sixth_step
  else
    puts "----------------------------"
    puts "Better luck next time, pal!"
    rwx_file
  end

end


# Bit of history to guide user along the program
def story_line
 puts '''Now that we\'ve opened your file lets pretend we input data into the file by typing stuff in and saved it.'''
end


# Press Y or N to finish writing file which will save or close it
def sixth_step
  story_line
  puts "Press Y or N to save or exit"

  print "\nrepo: "
  grab_input = $stdin.gets.chomp

  if grab_input == "Y"
    puts "File saved, proceed."
    seventh_step
  else
    "File not saved, goodbye."
    exit(0)
  end

end


# Prompt the user to ask what is a way of uploading to github via terminal? BONUS: have it type help to access what is supposibly documentation on github stuff
def seventh_step
  puts "Type help for a set of commands"

  print "repo: "
  type_help = $stdin.gets.chomp

  if type_help == "help"
    puts "These are a list of commands."
    puts '''
      $ git status - Lists all new or modified files to be committed
      $ git add [file] - Snapshots the file in preparation for versioning
      $ git reset [file] - Unstages the file, but preserve its contents
      $ git commit -m "[descriptive message]" - Records file snapshots permanently in version history
      $ git branch - Lists all local branches in the current repository
      $ git push [alias] [branch] - Uploads all local branch commits to GitHub
    '''
    sleep(3)
    eighth_step
  else
    puts "Type in help to continue"
  end

end


def story_line_two
  puts "Now that you have a list of commands read and UNDERSTAND them."
  puts "We will be using some of these commands, lets proceed."
end


# Question user with three options, A being do git status or B, git add <filename>.txt or C, git branch ???
# Use a conditional statement
def eighth_step
  story_line_two
  puts "\nNow that we've made all of our changes. What's next?"
  puts "1. git status - lists all new or modified files to be committed"
  puts "2. git add [file] - snapshots the file in preparation for versioning"
  puts "3. git branch - Lists all local branches in the current repository"

  print "repo:  "
  eighth_step_input = $stdin.gets.chomp

  if eighth_step_input == "1"
    puts "Smart, but check to see what branch you're on first."
    eighth_step
  elsif eighth_step_input == "2"
    puts "You should probably check what has been modified before using this command blindly."
    eighth_step
  else eighth_step_input == "3"
    puts "Not too shabby mate."
    ninth_step
  end

end


# After adding ask user the proper syntax for committing, else prompt user to do research on how to do so at
# the actual URL of Github docs
def ninth_step
  puts "Now commit your file to create a snapshot of your file and store it in the version history."
  puts "Hint: Use one of the commands from help."

  print "repo: "
  commit_input = $stdin.gets.chomp

  if commit_input == "git commit -m \"message\""
    puts "File added successfully!"
    tenth_step
  else
    puts "Incorrect, try again."
    ninth_step
  end

end


# When everything is correct git push
# Once that is done prompt user with a completion
def tenth_step
  puts "One last step, push to the remote repo!"

  print "repo: "
  tenth_step = $stdin.gets.chomp

  if tenth_step == "git push"
    puts "Congratulations!"
  else
    puts "So close, try again!"
    tenth_step
  end

end


start
