def solve_cipher (input,shift = -3)
  words = input.split(' ')
  words.map! do |word|
    word = word.chars
    word.map! do |letter|
      new_pos = letter.ord + shift
      if new_pos <= 96  
        new_pos +=26
      end
      letter = new_pos.chr
    end
    word = word.join + " "
  end
  words = words.join
end

puts solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)