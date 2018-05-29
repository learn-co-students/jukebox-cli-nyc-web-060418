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

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
    if command == "help"
      run(songs)
    elsif command == "play"
      play(songs)
      run(songs)
    elsif command == "list"
      list(songs)
      run(songs)
    elsif command == "exit"
      exit_jukebox
      exit
    else
      puts "I don't understand that. Please try again."
      run(songs)
    end
end

def help
  puts "I accept the following commands:
      - help : displays this help message
      - list : displays a list of songs you can play
      - play : lets you choose a song to play
      - exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index do |song, index|
    puts "#{index + 1}. " + song
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if user_input.to_i > 0 && user_input.to_i < songs_array.length
    song_number = user_input.to_i
    puts "Playing #{songs_array[song_number - 1]}"
    return 0
  elsif songs_array.include?(user_input)
    song_name = user_input
    puts "Playing #{song_name}"
    return 0
  else
    puts "Invalid input, please try again."
    return 1
  end
end

def exit_jukebox
  puts "Goodbye"
end
