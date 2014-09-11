def is_prime?(n)
  (2..n-1).each do |num|
    return false if n % num == 0
  end
  true
end

def sum_of_primes(max)
  sum = 0
  try = 2
  count = 1
  until count > max
    if is_prime?(try)
      sum += try
      count += 1
    end
    try += 1
  end
  sum
end



puts sum_of_primes(1000)