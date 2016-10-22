def word_sorting(sentence)
  arr = sentence.split(' ')
    arr.each do |word|
      if word.include?(".")
       word.tr!('.', '')
      end
    end
  arr.sort{ |a,b| a.upcase <=> b.upcase }
end

puts "Type a sentence"
sentence = gets.chomp
puts word_sorting(sentence)