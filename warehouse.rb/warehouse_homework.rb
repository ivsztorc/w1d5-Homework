require "pry-byebug"


@array_bay = {
  a10: "rubber band",
  a9: "glow stick",
  a8: "model car",
  a7: "bookmark",
  a6: "shovel",
  a5: "rubber duck",
  a4: "hanger",
  a3: "blouse",
  a2: "stop sign",
  a1: "needle",
  b1: "tire swing",
  b2: "sharpie",
  b3: "picture frame",
  b4: "photo album",
  b5: "nail filer",
  b6: "tooth paste",
  b7: "bath fizzers",
  b8: "tissue box",
  b9: "deodrant",
  b10: "cookie jar", 
  c1: "rusty nails", 
  c2: "drill press", 
  c3: "chalk", 
  c4: "word search", 
  c5: "thermometer", 
  c6: "face wash", 
  c7: "paint brush", 
  c8: "candy wrapper", 
  c9: "shoe lace", 
  c10: "leg warmers"
}

def menu
  puts `clear`
  puts "*** Warehouse Picker App ***"
  puts "Welcome to the warehouse. What would you like to do?"
  print "(a) show items in bays and show distance between items, (b) get collection order or (q)uit: "
  gets.chomp.downcase
end

def show_items
  print "which bays do you want to check items for? between a1-10, b1-10, c1-10"
  bays = gets.chomp.downcase
  user_bays = bays.split(",")
  print user_bays
  user_bays.each do |one_bays|
  puts
     array_bay[user_bays].inspect
  end
   
  # distance=selection.map { |s| @array_bay.index(s) }.max
    puts " #{distance} steps from the entrance to retrieve all of your items."
  end


#binding.pry

def collection_order
  puts "which product do you want to collect?" 
  print "Please identify which items you would like to check, if multiple please seperate with comma"
  bays = gets.chomp.downcase
  user_bays = bays.split(",")
  print user_bays
end


# @array_bay = @bay.map.with_index {|item, index| "#{index}. #{item}"}


# array_bay.each {|key, value| puts "bay: #{key}, product: #{value}" }


response = menu

until response == 'q'
  case response
  when 'a'
    show_items
  when 'b'
    collection_order
  end

    sleep = gets

  response = menu
end