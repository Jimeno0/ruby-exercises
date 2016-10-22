puts "what is the source file?"
source = gets.chomp
puts "What is the destination file?"
destination = gets.chomp

selected_source =IO.read(source)
IO.write(destination, selected_source)

puts "transfer text from #{source} to #{destination} completed"