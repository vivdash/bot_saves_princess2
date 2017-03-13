class SavePrincess

  def next_move(n, r, c, grid)
    bot_x_pos = c
    bot_y_pos = r

    princess_x_pos = -1
    princess_y_pos = -1

    (0...n).each do |i|
      if grid[i].index('p') != nil
        princess_y_pos = i
        princess_x_pos = grid[i].index('p')
      end
      break if princess_x_pos >=0 && princess_y_pos >= 0
    end

    flag = true

    if bot_x_pos > princess_x_pos
      bot_x_pos -= 1
      flag = false
      puts 'LEFT'
    elsif bot_x_pos < princess_x_pos
      bot_x_pos += 1
      flag =false
      puts "RIGHT"
    end

    if bot_y_pos > princess_y_pos && flag == true
      bot_y_pos -= 1
      puts "UP"
    elsif bot_y_pos < princess_y_pos && flag == true
      bot_y_pos += 1
      puts "DOWN"
    end
  end
end