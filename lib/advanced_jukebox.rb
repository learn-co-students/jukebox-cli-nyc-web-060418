#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }
 
def help
  context = "I accept the following commands:
            - help : displays this help message
            - list : displays a list of songs you can play
            - play : lets you choose a song to play
            - exit : exits this program"
  puts context
end
  

def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.each do |key|
    puts "#{key}" 
  end
end 

def play(my_songs)
  puts "Please enter a song name:"
  input = gets.chomp
  my_songs.each do |key, value|
    if input == key
       system "open #{value}"
      return nil
    end
  end
  puts "Invalid input, please try again."
end


def exit_jukebox
 puts "Goodbye"
end

def run(my_songs)
  puts "Please enter a command:"
  input = gets.chomp 
  while input = gets.chomp do 
    case input
    when "help"
      help 
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "exit"
      exit 
      break 
    end 
  end 
end
