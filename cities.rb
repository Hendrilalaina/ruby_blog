dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def display_cities(dial_book)
  puts
  puts "*" * 5 + "All cities" + "*" * 5
  dial_book.each {|key, _value| puts key.capitalize}
end

def get_input
  print "Enter the name of city: "
  gets.chomp
end

def get_area_code(dial_book, city_name)
  city_name.downcase!
  puts dial_book.include?(city_name) ? dial_book[city_name] : "City unavailable!"
end

def prompt
  puts "Do you want to continue: (y/N)"
  return gets.chomp
end

loop do
  display_cities(dial_book)
  get_area_code(dial_book, get_input)
  break unless prompt.downcase == 'y'
end