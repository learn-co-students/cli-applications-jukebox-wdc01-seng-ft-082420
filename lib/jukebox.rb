require "pry"




def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end


def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end



def play(cool_songs)
  puts "Please enter a song name or number:"
    input = gets.chomp()

    if (1..9).to_a.index(input.to_i) != nil
      puts "Playing #{cool_songs[input.to_i - 1]}"
    elsif cool_songs.index(input) != nil
      puts "Playing #{input}"
    else
      puts "Invalid input, please try again"
    end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  #help
  command = ""
  while command
  puts "Please enter a command:"
  command = gets.downcase.strip
  case command
    when 'list'
      list(songs)
      when 'play'
        list(songs)
        play(songs)
      when 'help'
        help
      when 'exit'
        exit_jukebox
        break
      else
        help
      end
    end
  end
