require 'csv'

sum = 0

CSV.foreach('nums.csv') do |num|
  sum += num.first.to_i
end

puts sum.to_s[0..9]