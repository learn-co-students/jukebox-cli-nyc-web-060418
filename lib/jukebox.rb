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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user = gets.chomp
  
  if list(songs).include?(user)
    puts "Playing #{songs[user + 1]}" if user.class == Integer && user < songs.size
    puts "Playing #{user}"  
  else
    puts "Invalid input, please try again"
  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user = gets.chomp
    
    
  while user != "exit"
    case user
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    else
      puts "Invalid command."
    end
    
    puts "Please enter a command:"
    user = gets.chomp
  end
  
  exit_jukebox
end


