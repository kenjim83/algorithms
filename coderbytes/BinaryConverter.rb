def BinaryConverter(str)
  nums = str.split('').map(&:to_i)
  nums
end

def Decimal_to_binary(num)
  binary = []
  while num > 0
    mod = num % 2
    num = num / 2
    binary.unshift(mod.to_s)
  end
  binary.join('')
end

puts Decimal_to_binary(200)

p BinaryConverter('10111')



