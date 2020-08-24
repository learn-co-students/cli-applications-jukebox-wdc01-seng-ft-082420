def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

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

def exit_jukebox
  puts "Goodbye"
end

def list(songs)
  songs.each_with_index { |song, index|
    puts "#{index+1}. #{song}"
  }
end

def play(songs)
  order = [1,2,3,4,5,6,7,8,9]
  puts "Please enter a song name or number:"
  input = gets.strip
  if order.include?(input.to_i) == true
    temp = input.to_i
    puts "Playing #{songs[temp-1]}"
  elsif songs.include?(input) == true 
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def run(songs)
  puts "Please enter a command:"
  should_end = false
  while should_end == false do
    input = gets.strip
    if input == "exit"
      exit_jukebox
      should_end = true
    elsif input == "help"
      help
    elsif input == "list"
      list(songs)
    else
      play(songs)
    end
  end
end

#run(songs)