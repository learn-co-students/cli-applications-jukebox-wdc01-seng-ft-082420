# Add your code here
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

# -- Commands -- 

def help
puts  "I accept the following commands:"
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index|
  puts "#{index+1}. #{song}"
}
end

def play (songs) 
  puts "Please enter a song name or number:"
  input = gets.chomp 
    if input.to_i >= 1 && input.to_i <= songs.length
     puts "Playing #{songs[input.to_i-1]}"
     # extract intergers from input, if it is greater than 1 and the smaller than the number of songs then -1 to get the index and pull the song 
    elsif songs.include?(input)
      puts "Playing #{songs.find{|song| song == input}}"
    else
      puts "Invalid input, please try again"
  end 
end 

def exit_jukebox 
  puts "Goodbye"
end 


# -- RUN --

def run (songs)
  while true do
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "exit"
      exit_jukebox
      break
    when "play"
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    else
      puts "Invalid entry"
    end
  end
end

