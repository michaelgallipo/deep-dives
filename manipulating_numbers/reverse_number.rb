def reverse_number(number)
	arr = number.to_s.split('')
	r_arr = []
	arr.each do |digit|
		r_arr.unshift(digit)		
	end
	p r_arr.join('')
end

reverse_number(12345)

def no_strings_reverse(number)

	arr = number.digits
	i = arr.length - 1
	multiplier = 1
	reverse = 0
	while i >= 0
		reverse += arr[i] * multiplier
		i -= 1
		multiplier *= 10 
	end

	p reverse

end

no_strings_reverse(56789)
