def lucky_room
  puts "This is the lucky room with three boxes."
  puts "One of these boxes will make you a millionaire."
  puts "Please pick one box"

  print "> "
  box = $stdin.gets.chomp

  if box == "3"
   puts "Congratulations, you are very lucky and have now become a millionaire!"
  elsif box == "1" || box == "2"
   dead ("Sorry, you are not so lucky after all. Please leave the room.")
  else
   puts "There are only 3 boxes buddy. Please pick a number between 1 and 3 inclusive."
  end
end

def unlucky_room
  dead "This is the unlucky room with no boxes. Sorry, you lose!"
end

def dead(why)
  puts why, "Tough luck!"
  exit(0)
end

def start 
  puts "Welcome to the game!"
  puts "You have two options:"
  puts "Please pick the room to your left or to your right."

  print "> "
  room = $stdin.gets.chomp

  if room == "left"
   unlucky_room
  elsif room == "right"
   lucky_room
  else
  dead ("You can only go left or right. Sorry, you lose!")
  end
end

start