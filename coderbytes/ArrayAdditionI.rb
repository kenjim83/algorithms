## QUESTION

# Have the function ArrayAdditionI(arr) take the array of numbers stored in arr
# and return the string true if any combination of numbers in the array can be
# added up to equal the largest number in the array, otherwise return the string
# false.

# For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23.
# The array will not be empty, will not contain all the same elements, and may contain negative numbers.

def ArrayAdditionI(arr)
  max_index = arr.index(arr.max)
  max = arr.slice!(max_index)

  (1..arr.length).to_a.each do |n|
    arr.combination(n).each do |x|
      return true if x.reduce(&:+) == max
    end
  end
  false

end

# Driver code

arr1 = [5,7,16,1,2]
arr2 = [3,5,-1,8,12]

p ArrayAdditionI(arr1)
p ArrayAdditionI(arr2)

