class BattleField
  attr_accessor :size, :grid

  def validate_size
    unless size.is_a? Numeric 
      puts "Please enter integer only. Try again!"
      abort
    end
    if !size.between?(1, 100)
      puts "Enter Number Only between 1 and 100. Try again!"
      abort
    end
  end

  def validate(bot_x, bot_y)
    all_battle_values = []

    (0...size).each do |x|
      (0...size).each do |y|
        all_battle_values <<  value(x, y)
      end
    end
    p_count = all_battle_values.count("p")
    if p_count != 1
      puts "Please Enter 1 Princess(p) for Battle Field. Try again!"
      abort
    end
    m_count = all_battle_values.count("m")
    if m_count != 1
      puts "Please Enter Bot(m) for Battle Field. Try again!"
      abort
    end

    dash_count = all_battle_values.count("-")
    if dash_count != (size * size - 2)
      puts "Please Enter only - in blank values Battle Field. Try again!"
      abort
    end

    if !(bot_x.between?(0, size - 1) && bot_y.between?(0, size - 1))
      puts "Position provided for bot (m) is out of Battle Field. Try again!"
      abort
    end

    if value(bot_x, bot_y) != "m"
      puts "Position provided for bot (m) is not correct in Battle Field. Try again!"
      abort
    end
  end

  def value(x, y)
    grid[x].split("")[y]
  end

end