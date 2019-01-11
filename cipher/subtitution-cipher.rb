

def cipher(string)
  alpha_array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  # key_array = ["d", "d", "d", "d", "d"]
  key_array = []
  shift_amount = 0
  current_key_value = []
  next_letter = ""
  coded_message = ""
  decoded_message = ""
  # encode_array = ["d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c"]

  5.times do
    num = rand(0..25)
    key_array << alpha_array[num]
  end
  p key_array

  clear_array = string.split(//)
  clear_array.each do |letter|
    i = clear_array.index(letter)
    shift_amount = key_array[i].codepoints[0] - 97
    if letter.codepoints[0] + shift_amount > 122
      next_letter = (letter.codepoints[0] + shift_amount - 26).chr
      coded_message.insert(-1, next_letter)
    else
      next_letter = (letter.codepoints[0] + shift_amount).chr
      coded_message.insert(-1, next_letter)
    end
  end
  p coded_message

  coded_array = coded_message.split(//)
  coded_array.each do |letter|
    i = coded_array.index(letter)
    shift_amount = key_array[i].codepoints[0] - 97
    if letter.codepoints[0] - shift_amount < 97
      next_letter = (letter.codepoints[0] - shift_amount + 26).chr
      decoded_message.insert(-1, next_letter)
    else
      next_letter = (letter.codepoints[0] - shift_amount).chr
      decoded_message.insert(-1, next_letter)
    end
  end
  p decoded_message
end

cipher("hello")





