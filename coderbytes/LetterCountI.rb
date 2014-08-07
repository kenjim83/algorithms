# Using the Ruby language, have the function LetterCountI(str) take the str parameter being passed
# and return the first word with the greatest number of repeated letters.

# For example: "Today, is the greatest day ever!" should return 'greatest' because it has 2 e's (and 2 t's)
# and it comes before ever which also has 2 e's. If there are no words with repeating letters return -1.
# Words will be separated by spaces.

def LetterCountI(str)
  max = 0
  word_counts = {}

  str.downcase.split(' ').each do |word|
    letter_counts  = {}
    word.each_char do |char|
      letter_counts[char] ? letter_counts[char] += 1 : letter_counts[char] = 1
    end
    max = letter_counts.values.max if letter_counts.values.max > max
    word_counts[word] = letter_counts.values.max
  end

  return -1 if max == 1
  word_counts.key(max)
end

string = "Today, is the greatest day ever!"

p LetterCountI(string)