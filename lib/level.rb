module Level

  def determine_level(xp, quests)
    case xp
    when 0...1000
      ary = ary = [1, 1000-xp, xp, "Eager"]
    when 1000...2500
      ary = [2, 2500-xp, xp, "Novice"]
    when 2500...4500
      ary = [3, 4500-xp, xp, "Apprentice"]
    when 4500...7000
      ary = [4, 7000-xp, xp, "Squire"]
    when 7000...10000
      ary = [5, 10000-xp, xp, "Hopeful"]
    when 10000...13500
      ary = [6, 13500-xp, xp, "Cheery"]
    when 13500...17500
      ary = [7, 17500-xp, xp, "Persistant"]
    when 17500...22000
      ary = [8, 22000-xp, xp, "Dashful"]
    when 22000...27000
      ary = [9, 27000-xp, xp, "Dashing"]
    when 27000...32500
      ary = [10, 32500-xp, xp, "Courageous"]
    when 32500...38500
      ary = [11, 38500-xp, xp, "Ardent"]
    when 38500...45000
      ary = [12, 45000-xp, xp, "Steadfast"]
    when 45000...52000
      ary = [13, 52000-xp, xp, "Iron-Willed"]
    when 52000...59500
      ary = [14, 59500-xp, xp, "Dependable"]
    when 59500...67500
      ary = [15, 67500-xp, xp, "Popular"]
    when 67500...76000
      ary = [16, 76000-xp, xp, "Good Looking"]
    when 76000...85000
      ary = [17, 85000-xp, xp, "Jimmy Rustling"]
    when 85000...94500
      ary = [18, 94500-xp, xp, "Undeterred"]
    when 94500...104500
      ary = [19, 94500-xp, xp, "Crafty"]
    when 104500...115000
      ary = [20, 115000-xp, xp, "Brilliant"]
    when 115000...126000
      ary = [21, 126000-xp, xp, "Genius"]
    when 126000...137500
      ary = [22, 137500-xp, xp, "Chivalrous"]
    when 137500...149500
      ary = [23, 149500-xp, xp, "Master"]
    when 149500...162000
      ary = [24, 162000-xp, xp, "Unstoppable"]
    when 162000...175000
      ary = [25, 175000-xp, xp, "Perfect"]
    when 175000...188500
      ary = [26, 188500-xp, xp, "Triumphant"]
    when 188500...202500
      ary = [27, 202500-xp, xp, "Heroic"]
    when 202500...217000
      ary = [28, 217000-xp, xp, "Legendary"]
    when 217000...232000
      ary = [29, 232000-xp, xp, "Mythical"]
    else
      ary = [30, 1000000000000000000000000000-xp, xp, "Ultimate"]
    end

    unless quests.empty?
      ary.push(gen_title(quests))
    else
      ary.push("Noob")
    end

    ary
  end
end
