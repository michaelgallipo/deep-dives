class Die

attr_accessor :sides

  def initialize(sides)
    @sides = sides
  end

  def roll(number)
    i = 1
    number.times do
      result = rand(1..sides)
      puts "#{sides}-sided die number #{i} was a #{result}"
      i += 1
    end
  end


end

class Dicecup

  def initialize(array)
    @dice = array
  end

  def group_roll
    @dice.each do |die|
      result = Die.new(die.keys[0])
      result.roll(die.values[0])

    end
  end


end



# normal_die = Die.new(6)
# p normal_die.sides
# normal_die.roll(5)
# bag = 
Dicecup.new([{6=> 5}, {20=> 1}, {12=> 3}, {10=> 0}]).group_roll
# p bag
# bag.group_roll

