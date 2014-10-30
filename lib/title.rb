module Title

  def gen_title(quests)
    skills_hash = Hash.new(0)

    # Create hash of instances of a skill in the array
    quests.each do |user_quest|
      skills_hash[user_quest.quest.skill.name] += 1
    end

    # Find the skill with the most instances
    highest_skill = skills_hash.max_by{|key,value| value}
    case highest_skill[0]
    when "Ruby"
      "Rubyist"
    when "Cooking"
      "Chef"
    when "Guitar"
      "Shredder"
    when "Car Repairs"
      "Mechanic"
    when "Yoga"
      "Yoga Pracitioner"
    when "First Aid"
      "Medic"
    else
      "Noob"
    end

  end
end
