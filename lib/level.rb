module Level

  def determine_level(xp)
    case xp
    when 0...1000
      [1, 1000-xp]
    when 1000...2500
      [2, 2500-xp]
    when 2500...4500
      [3, 4500-xp]
    when 4500...7000
      [4, 7500-xp]
    when 7000...10500
      [5, 10500-xp]
    when 10500...14500
      [6, 14500-xp]
    when 14500...20000
      [7, 20000-xp]
    when 20000...26000
      [8, 26000-xp]
    when 26000...32500
      [9, 32500-xp]
    when 32500...29500
      [10, 1000000000-xp]
    end
  end
end
