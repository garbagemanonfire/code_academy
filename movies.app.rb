movies = {
 Memento: 3,
 Doubtfire: 2,
 Nightmare: 5
}

puts 'What would you like to do?'
choice = gets.chomp

case choice
when 'add'
    puts "What is the title of the movied you would like to add?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "What is the rating of the movie on a scale of 1-4?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title}, with the rating #{rating} has been added!"  
    else
        puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
when 'update'
    puts "What is the title of the movied you would like to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "That movie doesnt exists! Try adding it first jerk!"
    else
        puts "What is the new rating of the movie on a scale of 1-4?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title}, has been updated with the rating #{rating}" 
    end
when 'display'
    puts "Here are all your movies weirdo!"
    movies.each do |movie,rating|
        puts "#{movie}: #{rating}"
    end
when 'delete'
    puts "What is the title of the movied you would like to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "That movie doesnt exists! Try adding it first jerk!"
    else
       movies.delete(title.to_sym)
       puts "#{title} has been removed."
    end
else
   puts "Error!"
end