def clean_yard


	map = [['E', 'G', 'G', 'G', 'E', 'G', 'G', 'E', 'G', 'G', 'G', 'E', 'G', 'G'],
	       ['G', 'G', 'G', 'E', 'G', 'G', 'G', 'G', 'G', 'E', 'G', 'G', 'G', 'G'],
	       ['G', 'E', 'G', 'G', 'E', 'G', 'G', 'G', 'G', 'G', 'E', 'G', 'G', 'E'],
	       ['G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G'],
	       ['G', 'G', 'G', 'E', 'G', 'G', 'G', 'G', 'G', 'E', 'G', 'G', 'G', 'G'],
	       ['E', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'E', 'G', 'G'],
	     	 ['G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G'],
	     	 ['G', 'G', 'E', 'E', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G'],
	     	 ['G', 'G', 'G', 'G', 'G', 'G', 'E', 'G', 'G', 'G', 'G', 'G', 'G', 'G'],
	     	 ['G', 'G', 'G', 'G', 'G', 'E', 'E', 'E', 'G', 'G', 'G', 'G', 'E', 'G'],
	     	 ['G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'E', 'G', 'G', 'G', 'G']]

 	map.each do |row|
 		puts "#{row[0]} #{row[1]} #{row[2]} #{row[3]} #{row[4]} #{row[5]} #{row[6]} #{row[7]} #{row[8]} #{row[9]} #{row[10]} #{row[11]} #{row[12]} #{row[13]}"
 	end
 	puts ""
	col = 0
	egg_count = 0
	egg_array = []
	14.times do 
		row = 0
		11.times do
			if map[row][col] == "E"
				egg_count += 1
				egg_array << [col, row]
				map[row][col] = "G"
				map.each do |row|
					puts "#{row[0]} #{row[1]} #{row[2]} #{row[3]} #{row[4]} #{row[5]} #{row[6]} #{row[7]} #{row[8]} #{row[9]} #{row[10]} #{row[11]} #{row[12]} #{row[13]}"
				end
				puts ""
			end
			row += 1
		end
		col += 1
		
	end

puts "*************** Yard Report ***************"
puts ""
puts "  Yard: Clean"
puts "  Divots: Replaced"
puts ""
puts "  Total Eggs Found: #{egg_count}"
puts ""
puts "  Eggs found at the following coordinates"
puts "  _______________________________________"
egg_array.each do |egg|
	if egg[0] < 10
		puts "       Col: #{egg[0]}  -  Row: #{egg[1]}"
	else 
		puts "       Col: #{egg[0]} -  Row: #{egg[1]}"
	end
end
puts ""
puts "  Sir or Madam,"
puts "  Your Yard is safe for horseshoes,"
puts "  BBQ's, lawn darts and other activities."
puts "  See you next year, E. Bunny."
puts ""
puts "*******************************************"



end

clean_yard