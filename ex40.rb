# Creating the class Song
class Song

  # When we call a function down below the initialize
  # function grabs the values being passed in and
  # assigns it equal to the variable lyrics
  def initialize(lyrics)
    @lyrics = lyrics
  end

  # sing_me_a_song then gets the lyrics variable
  # and iterates through each element in the array
  # of what was passing in and uses the |line| argument
  # to pass it into and assign to as it displays the output
  # with puts line
  def sing_me_a_song()
    @lyrics.each { |line| puts line }
  end

  # Calling a variable and assigning it a string
  SWEG = "Super Doper Docher, brah."
end

# Creating an instance(object) of the Song class
# which has an array with 3 elements in the index
# which are strings of lyrics I created
happy_bday = Song.new(["Happy birthday to you", "I don't want to get sued", "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family", "With pockets full of shells"])

anotha_one = Song.new(["We are the champions, my friendddddd.", "And we'll keep on fighting til the end. DUN DUN DUN DUNNNNN"])

i_wanna_rock = Song.new(["I WANNA ROCK!","SWEG"])

# Calling the happy_bday variable with the function
# we created called sing_me_a_song using the . (dot)
# operator which grabs the array and assigns them
# equal to the lyrics variable in the initialize function
# which has a parameter of lyrics where we pass in our array
# so it can be assigned to the lyrics variable
happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

anotha_one.sing_me_a_song()

i_wanna_rock.sing_me_a_song()

# Displaying the output of the varibale SWEG
# that is in the class Song, we access it with
# the double colons ::
puts Song::SWEG
