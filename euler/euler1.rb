def multiples_of_3_and_5
  nums = (1...1000).to_a.select{|num| num % 3 == 0 || num % 5 == 0 }
  nums.inject(&:+)
end

p multiples_of_3_and_5