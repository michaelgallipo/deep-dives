
puts "Welcome to Ruby Burger. We have specials on Hamburgers, Fish Filet and Cookies for a dollar. Can I take your order?"

replies = ["Would you like fries with that?", "Would you like to supersize that?", "We are out of that at the moment",
"Our sauces are BBQ, Buffalo and honey mustard"]

ordering = true

until ordering == false

	response = gets.chomp

	if response != response.upcase
		puts "Can you speak louder"
	else if response == "THATS IT"
		ordering = false
		puts "Pull up to the first window."
	else
		reply = rand(0..replies.length - 1)
		puts replies[reply]
	end

end
end

