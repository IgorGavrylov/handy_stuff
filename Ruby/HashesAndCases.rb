movies = Hash.new

movies[:test1] = 5
movies[:test2] = 4

print "What would you like to do? "
choice = gets.chomp

case choice.downcase
  when "add"
    print "Please provide movie title: "
    title = gets.chomp.to_sym
    if movies[title] == nil
      print "And now rating for it, please: "
      rating = gets.chomp.to_i
      movies[title] = rating
      puts "#{title} with rating #{rating} was added to your DB."
    else
      puts "#{title} is already in your database!"
    end
    puts "Current state of your DB:"
    movies.each {|movie, rating|
      puts "#{movie}: #{rating}"}

  when "update"
    print "Please provide movie title: "
    title = gets.chomp.to_sym
    if movies[title] != nil
      print "And now rating for it, please: "
      rating = gets.chomp.to_i
      movies[title] = rating
      puts "#{title} with rating #{rating} was updated in your DB."
    else
      puts "#{title} is missing from your database!"
    end
    puts "Current state of your DB:"
    movies.each {|movie, rating|
      puts "#{movie}: #{rating}"}

  when "display"
    puts "Current state of your DB:"
    movies.each {|movie, rating|
      puts "#{movie}: #{rating}"}

  when "delete"
    print "Please provide movie title: "
    title = gets.chomp.to_sym
    if movies[title] != nil
      movies.delete(title)
      puts "#{title} deleted from your database!"
    else
      puts "#{title} is not present in your database!"
    end
    puts "Current state of your DB:"
    movies.each {|movie, rating|
      puts "#{movie}: #{rating}"}

  else
    puts "Error! Unknown command: #{choice.downcase}"
end