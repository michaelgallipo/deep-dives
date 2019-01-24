def add_commas(number)

	string_number = number.to_s
	i = string_number.length - 1
	c = 0

	while i >0
		c += 1
		if c == 3
			string_number.insert(i, ',')
			c = 0
		end
		i -= 1
	end

	puts string_number
	
end

add_commas(123456797792748)