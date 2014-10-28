# [In,Out]
in_out = [
	[1,5],
	[2,7],
	[1,24],
	[3,9],
	[2,10],
	[3,7],
	[2,11],
	[1,9]
]

report = {}

in_out.each do |record|
	(record[0]..record[1]).to_a.each do |hour|
		report[hour] ? report[hour] += 1 : report[hour] = 1
	end
end

report.each{|hour| puts "#{hour.first}:00: #{hour.last} employee(s)"}
