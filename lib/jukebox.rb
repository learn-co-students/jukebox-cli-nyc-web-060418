
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
   mess = "I accept the following commands:
          - help : displays this help message
          - list : displays a list of songs you can play
          - play : lets you choose a song to play
          - exit : exits this program"
  puts mess
 end

def list(args)
  args.each_with_index {|item, index| puts "#{index+1}. #{item}"}
end

def play(songs)
  prompt = "Please enter a song name or number:"
  puts prompt
  input = gets.chomp
  output = false
  songs.each_with_index do |item, index|

    if (index+1).to_s  == input || item == input
      output = true
      puts  "Playing song #{songs[index]}"

    elsif output == false && index >7
      puts "Invalid input, please try again"

    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)


  loop do
    puts "Please enter a command:"
    input = gets.chomp
    if input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
      break
    end
  end

end



# run(songs)
