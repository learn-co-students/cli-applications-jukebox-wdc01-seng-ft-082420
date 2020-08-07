require 'pry'

def help 
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
 
end

def list(songs)
 
songs.each_with_index do |song, i|
 
  puts "#{i + 1 }. #{song}"
  
 end 
end

def play(songs)
    
  puts "Please enter a song name or number:"
  index = gets.strip
  
  if index.to_i < songs.length &&  index.to_i > 0 
    puts "Playing #{songs[index.to_i-1]}"
     
   elsif songs.include?(index) 
   
   puts "Playing #{index}"
else
    puts "Invalid input, please try again"
        
    end 
end

def exit_jukebox
  puts "Goodbye"
end 

def run(songs) 

user = ""

while user != "exit"

puts "Please enter a command:"
user = gets.strip
if user == "list"
  list(songs)
elsif user == "play"
  play(songs) 
elsif user == "help" 
  help  
elsif user == "exit" 
  exit_jukebox
  end 
end
 

end 