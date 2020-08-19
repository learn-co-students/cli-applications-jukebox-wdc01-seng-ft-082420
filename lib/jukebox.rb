# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |obj, i|
    puts "#{i + 1}. #{obj}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  if user_response.to_i > 0 and user_response.to_i <= songs.size
    puts "Playing #{songs[user_response.to_i - 1]}"
  elsif user_response == songs.find { |element|
      user_response == element
    }
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_response = ""
  while user_response != "exit" do
    puts "Please enter a command:"
    user_response = gets.strip
    if user_response == "help"
      help
    elsif user_response == "list"
      list(songs)
    elsif user_response == "play"
      play(songs)
    end
  end
  exit_jukebox
end












