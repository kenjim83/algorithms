class Stack
  def initialize
    @stack = []
  end

  def push(n)
    @stack.push(n)
  end

  def pop
    @stack.pop
  end

  def empty?
    @stack.empty?
  end
end

File.open(ARGV[0]).each_line do |line|
  stack = Stack.new
  line.split(' ').each do |num|
    stack.push(num)
  end

  pop_to_output = true
  output = ''

  until stack.empty?
    if pop_to_output
      output += stack.pop.to_s + ' '
      pop_to_output = false
    else
      stack.pop
      pop_to_output = true
    end
  end

  puts output.chomp
end