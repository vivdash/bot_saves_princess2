require './battle_field'
require './save_princess'

bf = BattleField.new
puts "Enter BattleField size between 1 and 100."
bf.size = gets.to_i
bf.validate_size

puts "Enter bot postion"
bot_x, bot_y = gets.strip.split.map {|num| num.to_i}

puts "Enter battle_field grid"

grid = Array.new(bf.size)

(0...bf.size).each do |i|
  grid[i] = gets
end

bf.grid = grid
bf.validate(bot_x, bot_y)

SavePrincess.new.next_move(bf.size, bot_x, bot_y, bf.grid )