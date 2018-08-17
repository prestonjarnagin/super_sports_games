require './event'
require './games'

def enter_event
  puts "Enter name of Event"
  event_name = gets.chomp
  puts "Enter Athlete Ages. Press 0 to stop"
  ages = []
  stop = false

  while (!stop)
    input = gets.chomp
    if input == "0"
      stop = true
    else
      ages << input.to_i
    end
  end

end

def print_summary

end


puts "Enter the Year for the Games"
year = gets.chomp
games = Games.new(year)

quit = false
while (!quit)

  puts "Press 'e' to Enter Event, 's' to print summary, 'q' to quit"
  input = gets.chomp
  if input == 'e'
    enter_event
  elsif input == 's'
    print_summary
  elsif input == 'q'
    quit = true
  end
end
