def is_prime?(n)
  (2..n-1).each do |num|
    return false if n % num == 0
  end
  true
end

def is_palendrome?(n)
  n.to_s == n.to_s.reverse
end

def largest_prime_palendrome(n)
  until n < 2
    return n if is_prime?(n) && is_palendrome?(n)
    n -= 1
  end
end

print largest_prime_palendrome(1000)