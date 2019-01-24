def letter_grade(*args)

	grades = [{:A => 90}, {B:80}, {C:70}, {D:60}, {F:0}]
	total = args.reduce(0) {|subt, num| subt += num}
	avg = total / args.length
	final_grade = ""

	grades.each do |grade|
		if avg >= grade.values[0]
			final_grade = grade.keys.join(':')
			break
		end
		
	end

	if avg >= 60
		if avg % 10 <= 3
			final_grade += "-"
		elsif avg % 10 >= 7
			final_grade += "+"
		end
	end

	puts final_grade
end

letter_grade(100, 85, 67, 100, 95)