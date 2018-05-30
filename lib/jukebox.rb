require 'pry'
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


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs_arr)
  songs_arr.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs_arr)
  puts "Please enter a song name or number:"
  user_input = gets.chomp

  songs_arr.each do |song|
    if song == user_input
      puts "Playing #{song}"
      return nil
    end
  end
  if user_input.to_i < songs_arr.length + 1 && user_input.to_i != 0
    puts "Playing #{songs_arr[user_input.to_i - 1]}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  while user_input = gets.chomp do
    case user_input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit
      break
    end
  end
end
