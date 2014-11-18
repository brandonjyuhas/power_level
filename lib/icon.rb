module Icon
  def find_icon
    case self.experience_points
    when 1..500
      "/assets/quest_icons/1.jpg"
    when 501..1000
      "/assets/quest_icons/2.jpg"
    when 1001..1500
      "/assets/quest_icons/3.jpg"
    when 1501..2000
      "/assets/quest_icons/4.jpg"
    when 2001..2500
      "/assets/quest_icons/5.jpg"
    when 2501..3000
      "/assets/quest_icons/6.jpg"
    when 3001..3500
      "/assets/quest_icons/7.jpg"
    when 3501..4000
      "/assets/quest_icons/8.jpg"
    else
      "/assets/quest_icons/9.jpg"
    end
  end
end