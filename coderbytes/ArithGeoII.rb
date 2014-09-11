# Using the Ruby language, have the function ArithGeoII(arr) take the array of numbers stored
# in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or
# return "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either
# pattern return -1.
# An arithmetic sequence is one where the difference between each of the numbers is consistent,
# where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio.

# Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54].
# Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same element.


def arithmetic?(arr)
  index = arr.length-1
  until index == 1
    current_diff = arr[index] - arr[index-1]
    index -= 1
    next_diff = arr[index] - arr[index-1]
    return false if next_diff != current_diff
  end
  true

end

def geometric?(arr)
  index = arr.length-1
  until index == 1
    current_diff = arr[index].to_f / arr[index-1]
    index -= 1
    next_diff = arr[index].to_f / arr[index-1]
    return false if next_diff != current_diff
  end
  true
end

def ArithGeoII(arr)
  if arithmetic?(arr)
    "Arithmetic"
  elsif geometric?(arr)
    "Geometric"
  else
    -1
  end
end


p ArithGeoII([5,10,15])       # => 'Arithmetic'
p ArithGeoII([2, 6, 18, 54])  # => 'Geometric'
p ArithGeoII([2, 5, 12, 24])  # => -1