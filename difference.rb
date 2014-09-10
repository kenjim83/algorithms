# Return the greatest possible diff b/t 2 numbers in an array.

def diff(arr)
  arr.max - arr.min
end

def diff(arr)
  hi = 0
  lo = 0
  arr.each do |num|
    lo = arr[0]
    hi = arr[-1]
    lo = num if num < lo
    hi = num if num > hi
  end
  hi - lo
end



arr= [1,2,3,10]

p diff(arr)