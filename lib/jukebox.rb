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

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end  

def list(songs)
  songs.each.with_index(1) do |value, index| 
    puts "#{index}. #{value}" 
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  play_input = gets.strip
    
    if play_input.to_i.between?(1, 10)
      play_index = play_input.to_i - 1
      puts "Playing #{songs[play_index]}"
      
    elsif songs.include? play_input
      puts "Playing #{play_input}"
      
    
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
  run_input = gets.strip
  
  loop do 
    if run_input == "help"
      help
      puts "Please enter a command:"
      run_input = gets.strip
    elsif run_input == "list"
      list(songs)
      puts "Please enter a command:"
      run_input = gets.strip
    elsif run_input == "play"
      play(songs)
      puts "Please enter a command:"
      run_input = gets.strip
    elsif run_input == "exit"
      exit_jukebox
       break
    end  
  end
end   


#case  run_input
  #when "list"
   # list
  #when "play"
    #play
  #when "help"
    #help
  #else
    #exit_jukebox
  #end  
  
  #if run_input == "help"
    #help
  #elsif run_input == "list"
    #list
  #elsif run_input == "play"
    #play
  #elsif run_input == "exit"
    #exit_jukebox
   # break
  #end  








