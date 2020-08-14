
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

# Add your code here
def prompt_user
  puts "Please enter a command:"
  command = gets.strip
  return command
end


def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(tracks)
  
  tracks.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
  
end


def play(track)
  puts "Please enter a song name or number:"
  selection = gets.strip
  invalid = 0
  track.each_with_index do |item, index|

    if selection.to_i != 0 && selection.to_i - 1 == index && selection.to_i.between?(1, track.length)

      puts "Playing #{track[index]}"
      invalid = 1
      break
      
    

    elsif selection == item

      puts "Playing #{item}"
      invalid = 1
      break
    end

  end

  if invalid == 0
    puts "Invalid input, please try again"
  end
  
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)

  while true do
    choice = prompt_user

    if choice == "help"
      help
    elsif choice == "list"
      list(songs)
    elsif choice == "play"
      play(songs)
    elsif choice == "exit"
      exit_jukebox
      break
    end

  end
end