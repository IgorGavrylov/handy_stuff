movies = Hash.new("Unknown movie!")
movies["Matrix"] = 5

puts "Say something!"
choice = gets.chomp

case choice.downcase
  when "add"
  	puts "Added!"
  when "update"
  	puts "Updated!"
  when "display"
  	puts "Movies!"
  when "delete"
  	puts "Deleted!"
  else
  	puts "Error! Unknown command: #{choice.downcase}"
end