# Create an method to sort strings in an array by
# their length.
# Then, within each length group, alphabetized them.

# ie. ['elephant', 'dog', 'cat', 'mouse'] => ['cat', 'dog', 'mouse', 'elephant']


def sort(arr)
  word_count = {}
  arr.each do |word|
    if word_count[word.length]
      word_count[word.length] << word
    else
      word_count[word.length] = [word]
    end
  end
  word_count.sort.map{|set|set.last.sort}.flatten
end


arr = ['whatthehellisthis','dog', 'cat', 'mouse', 'elephant', 'eagle', 'cannary', 'levianthon', 'littlepiggything','birdy','fox']

p sort(arr)