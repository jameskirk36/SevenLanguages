#exercise 1
def print_sixteen_numbers_in_fours_using_each
	puts __method__
	(0..15).to_a.each do |e|
		if e % 4 == 0 
			puts e 
		else 
			print e.to_s + " " 
		end
	end
end

print_sixteen_numbers_in_fours_using_each

#exercise 2
def print_sixteen_numbers_in_fours_using_each_slice
	puts __method__
	(0..15).to_a.each_slice(4) {|e| p e }
end

print_sixteen_numbers_in_fours_using_each_slice

#exercise 4
def grep_in_file(filename, pattern)
	r = Regexp.new(pattern)
	File.open(filename, "r") do |file|
		file.readlines.each_with_index do |line, index|
			puts index.to_s + ':' + line if r.match(line) != nil
		end
	end
end

grep_in_file("stuff.rb", "File")

