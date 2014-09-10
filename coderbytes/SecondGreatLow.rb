# Using the Ruby language, have the function SecondGreatLow(arr) take the array of numbers stored
# in arr and return the second lowest and second greatest numbers, respectively, separated by a space.

# For example: if arr contains [7, 7, 12, 98, 106] the output should be 12 98.
# The array will not be empty and will contain at least 2 numbers.
# It can get tricky if there's just two numbers!

def SecondGreatLow(arr)
  return arr.join(' ') if arr.length == 2
  arr.sort!.uniq!
  "#{arr[1]} #{arr[-2]}"
end

arr1 = [1, 42, 42, 180]
arr2 = [4, 90]
arr3 = [7, 7, 12, 98, 106]

p SecondGreatLow(arr1)
p SecondGreatLow(arr2)
p SecondGreatLow(arr3)