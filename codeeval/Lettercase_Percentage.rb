File.open(ARGV[0]).each_line do |line|
    lower = 0;
    upper = 0;

    line.split('').each do |char|
      lower += 1 if char.match(/[a-z]/)
      upper += 1 if char.match(/[A-Z]/)
    end
    total = lower + upper
    lower_p  = (lower.to_f / total * 100).round(2)
    upper_p  = (upper.to_f / total * 100).round(2)
    puts "lowercase: #{'%.2f' % lower_p} uppercase: #{'%.2f' % upper_p}"
end

# Use ruby float formatting: "%.2f" % 93.2 => 93.20
