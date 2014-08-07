# NEED TO COMPLETE

# Create a method which takes an array of strings as input.
# Check whether each string contains a valid use of (), [], and {}.
# ie. -  each opening should have a closing
#     -  brackets cannot overlap each other like the last example

# For each VALID use of (), [], and {} return 1, else 0.

# Example:
#                 arr = [ ')(){}', '[]({})', '([])', '{()[]}', '([)]' ]
# Should return         [    0,        1,       1,       1,       0   ]

def check_braces(expressions)
  expressions.each do |exp|
    puts exp.match(/[\[](.+)?[\]]/) && exp.match(/[\()](.+)?[\)]/) && exp.match(/[\{](.+)?[\}]/) ? 1 : 0
  end
end

a = [ ')(){}', '[]({})', '([])', '{()[]}', '([)]' ]

check_braces(a)