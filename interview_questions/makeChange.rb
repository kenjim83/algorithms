# 2.89 -> 2 dollars, 3 quarters, 1 dime, 4 cents


def make_change(num)
  units = [ 100, 25, 10, 5, 1 ]

  cents_total = (num * 100).to_i

  breakdown = units.map do |unit|
    output = cents_total / unit
    cents_total = cents_total % unit
    output
  end

  "#{breakdown[0]} dollar(s), #{breakdown[1]} quarter(s), #{breakdown[2]} dime(s), #{breakdown[3]} nickels(s), #{breakdown[4]} pennies"
end

p make_change(2.89)