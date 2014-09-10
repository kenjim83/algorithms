def valid_parens?(str)
  only_parens = ""
  str.each_char do |c|
    if c == '{' || c == '(' || c == '[' || c == '}' || c == ')' || c == ']'
      only_parens << c
    end
  end

  while ( (only_parens.include? "{}") || (only_parens.include? "[]") || (only_parens.include? "()") )
      only_parens.gsub!("()", "")
      only_parens.gsub!('{}', "")
      only_parens.gsub!("[]", "")
  end
  only_parens == "" ? true : false
end


ex1 = "{ [ ] ( ) }"
ex2 = "{ [ ( ] ) }"
ex3 = "{ [ }"


p valid_parens?(ex1)
p valid_parens?(ex2)
p valid_parens?(ex3)