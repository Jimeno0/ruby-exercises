num = 1
while num <= 100
  result = ""
  if num%3==0
    result += "Fizz"
  end
  if num%5==0
    result += "Buzz"
  end
  if num.to_s.include? "1"
    result += "Bang"
  end
  if num%3!=0 && num%5!=0 && !num.to_s.include?("1")
    result = num.to_s
  end

  puts result
  num += 1  
end