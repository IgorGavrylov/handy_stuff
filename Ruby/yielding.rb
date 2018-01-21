def double (num)
	puts "Before yielding #{num}"
	num = yield (num)
	puts "After yielding - #{num}"
end

double(4) {|x| 
	puts "In a block!"
	x*2
}