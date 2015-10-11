def menu
  puts `clear`
  puts "*** Warehouse Picker App ***"
  puts "Welcome to the warehouse. What would you like to do?"
  print "(a) show items in bays and show distance between items, (b) get collection order or (q)uit: "
  gets.chomp.downcase
end

def show_items
  print "which bays do you want to check items for?"
end

def collection_order
  print "which product do you want to collect?"
end

array_bay = {
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


array_bay.each {|key, value| puts "bay: #{key}, product: #{value}" }

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