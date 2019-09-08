#Didn't quite work, does not go into conditions as expected

def BalancePoint(input)
	#Array of less than 3 symbols has no balance point
	return -1 if input.length < 3

	input_total = input.reduce(:+)
	input_last_index = input.length-1
	leftover_total = input[1]

print input_total
print input_last_index
print leftover_total

	#If sum of array without first or last element is 0 - first or last element respectively is the balance point
	if ((input_total-input[0])==0)
		return 0
	elsif ((input_total-input[input_last_index])==0)
		return input_last_index
	end
	
	#Going through the rest of the elements (something is wrong with conditions here, need to debug)
	(1..input_last_index-1).each do |n|
		if (leftover_total) == (input_total-leftover_total-input[n])
			print "Found it!"
			return n
		else
			print "Reducing total sum by value of an element we've just checked"
			input_total = input_total-input[n]
			leftover_total = leftover_total + input[n]
		end
	end
	
	return -1
end