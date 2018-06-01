#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => 'Users/slowbeam/Development/code/flatiron-prework/ruby/jukebox-cli-nyc-web-060418/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'Users/slowbeam/Development/code/flatiron-prework/ruby/jukebox-cli-nyc-web-060418/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'Users/slowbeam/Development/code/flatiron-prework/ruby/jukebox-cli-nyc-web-060418/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'Users/slowbeam/Development/code/flatiron-prework/ruby/jukebox-cli-nyc-web-060418/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => 'Users/slowbeam/Development/code/flatiron-prework/ruby/jukebox-cli-nyc-web-060418/audio/Emerald-Park/05.mp3',
"Blue" => 'Users/slowbeam/Development/code/flatiron-prework/ruby/jukebox-cli-nyc-web-060418/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'Users/slowbeam/Development/code/flatiron-prework/ruby/jukebox-cli-nyc-web-060418/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name:"
  song_request = gets.chomp
  songs.each do |song|
    if song_request == song
      system open my_songs[song]
    end
    if song_request != song
      puts "Invalid input, please try again"
    end
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

end

def exit_jukebox
puts "Goodbye"
end

def run(my_songs)
  help
    puts "Please enter a command:"
    input = ""
    help
    while input != "exit"
      puts "Please enter a command:"
      input = gets.chomp.downcase
      help if input == "help"
      list(songs) if input == "list"
      play(songs) if input == "play"
      end
      exit_jukebox
end
