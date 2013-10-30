print "Pick a number between 0 and 10:"
randomNum = rand(10)
guess = -1
while guess != randomNum
	guess = gets.to_i
	if guess > randomNum 
		puts "lower"
	elsif guess < randomNum
		puts "higher"
	end
end
	
puts "well done"

