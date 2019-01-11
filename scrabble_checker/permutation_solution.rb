def permutation_checker(base_word, possible_permutation)
  base_array = base_word.split(//)
  perm_array = possible_permutation.split(//)
  valid = true
  found = false

  perm_array.each do |letter|
    base_array.each do |letter2|
      if letter2 == letter
        @x = base_array.index(letter2)
        # p base_array = base_array.delete_at(x)
        found = true
        break
      else
        found = false
      end

    end

    if found == false
      valid = false
      break     
    else
      base_array.delete_at(@x)   
    end

  end
  p valid
end

permutation_checker("caliber", "calberr")