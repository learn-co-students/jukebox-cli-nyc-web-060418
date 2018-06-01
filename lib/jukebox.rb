require "pry"
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_request = gets.chomp
  songs.each_with_index do |song, index|
    if song_request = song || index
      puts "Playing #{song}"
    end
    if song_request != song || index
      puts "Invalid input, please try again"
    end
  end


end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end

def exit_jukebox
puts "Goodbye"
end

def run(songs)
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
