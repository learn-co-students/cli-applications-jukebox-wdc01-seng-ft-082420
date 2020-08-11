
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def play(songs) 
  puts "Please enter a song name or number:"
  user_input = gets.strip
    
    if songs.include?(user_input) 
      puts "Playing #{user_input}"
    elsif user_input.to_i > 0 && user_input.to_i <= songs.length 
      puts "Playing #{songs[user_input.to_i - 1]}"
    else 
      puts "Invalid input, please try again"
    end
end



def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index +1}. #{song}"
  end
end


def exit_jukebox
  puts "Goodbye"
end



def run(songs) 
  puts "Please enter a command:"
  command = gets.strip
    
    if command == "exit" 
      exit_jukebox
   else 
     case command
      when "help"
        help 
      when "list"
        list(songs) 
      when "play"
        play(songs) 
      
    end
  
end
end



