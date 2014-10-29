# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Skill.create([
  {
    name: "Ruby",
    icon_url: "/assets/skill_icons/ruby.jpg"
  },
  {
    name: "Cooking",
    icon_url: "/assets/skill_icons/cook.jpg"
  },
  {
    name: "Guitar",
    icon_url: "/assets/skill_icons/guitar.jpg"
  },
  {
    name: "Car Repairs",
    icon_url: "/assets/skill_icons/car.jpg"
  }

  ])

Quest.create([
  {
    skill_id: 1,
    name: "Hello World",
    description: "Using Ruby, print 'Hello World' to the Screen",
    icon_url: "/assets/quest_icons/1.jpg",
    experience_points: 500
  },
  {
    skill_id: 1,
    name: "10 to 1",
    description: "Write a method in 5 lines that prints the numbers 1 to 10 in reverse order",
    icon_url: "/assets/quest_icons/1.jpg",
    experience_points: 750
  },
  {
    skill_id: 1,
    name: "FizzBuzz",
    description: "Write a program that prints the numbers from 1 to 100. But for multiples of three print 'Fizz' instead of the number and for the multiples of five print 'Buzz'. For numbers which are multiples of both three and five print 'FizzBuzz'",
    icon_url: "/assets/quest_icons/2.jpg",
    experience_points: 1000
  },
  {
    skill_id: 1,
    name: "Find the Capitals",
    description: "Write a method that takes an array of hashes with two keys each: country or state, and capital. Keys may be symbols or strings. The method should return an array of sentences declaring the state or country and its capital.",
    icon_url: "/assets/quest_icons/2.jpg",
    experience_points: 1250
  },
  {
    skill_id: 1,
    name: "Remove Duplicates",
    description: "You are to write a function called unique that takes an array of integers and returns the array with duplicates removed. It must return the values in the same order as first seen in the given array. Thus no sorting should be done, if 52 appears before 10 in the given array then it should also be that 52 appears before 10 in the returned array.",
    icon_url: "/assets/quest_icons/3.jpg",
    experience_points: 1500
  },
  {
    skill_id: 1,
    name: "Remove Odd Hashes",
    description: "Create a method that takes an Array containing hashes as an argument. The hashes each contain two numbers in the format of: {a: 5, b: 5}. Return the array without any of the hashes whose values add up to be an odd number.",
    icon_url: "/assets/quest_icons/3.jpg",
    experience_points: 1750
  },
  {
    skill_id: 1,
    name: "Sinatra",
    description: "Create a web based application using Sinatra which displays 'Hello World', and access it using your browser.",
    icon_url: "/assets/quest_icons/4.jpg",
    experience_points: 2000
  },
  {
    skill_id: 1,
    name: "Consecutive Integers",
    description: "Given an array of unsorted positive ints, write a function that finds runs of 3 consecutive numbers (ascending or descending) and returns the indices where such runs begin. If no such runs are found, return nil.
      Example: [1, 2, 3, 5, 10, 9, 8, 9, 10, 11, 7] would return [0, 4, 6, 7]",
    icon_url: "/assets/quest_icons/4.jpg",
    experience_points: 2250
  },
    {
    skill_id: 1,
    name: "Deploy Rails",
    description: "Create your first Rails Application, and access it through localhost:3000. Create a welcome controller, and set welcome#index as the homepage.",
    icon_url: "/assets/quest_icons/5.jpg",
    experience_points: 2500
  },
    {
    skill_id: 1,
    name: "Devise",
    description: "Get some experience with gems, using the gem devise to create a user login. Test out creating a user and sign in as that user.",
    icon_url: "/assets/quest_icons/5.jpg",
    experience_points: 2750
  },
  {
    skill_id: 1,
    name: "Change Machine",
    description: "Implement a change function that accepts an integer parameter that represents cents, and returns the optimal change using the least number of coins. The function should return a hash containing a key for each coin of US currency (specifically 25¢ 10¢ 5¢ and 1¢ coins. The value of each coin should represent the count of each coin in the change. The function should return a hash with all coin count values set to 0 if the cents parameter is less than or equal to 0.",
    icon_url: "/assets/quest_icons/6.jpg",
    experience_points: 3000
  },
  {
    skill_id: 2,
    name: "Chicken Pesto Paninis",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/1.jpg",
    link: "http://allrecipes.com/Recipe/Chicken-Pesto-Paninis/Detail.aspx?evt19=1",
    experience_points: 500
  },
  {
    skill_id: 2,
    name: "Pesto Chicken Pasta",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/1.jpg",
    link: "http://allrecipes.com/video/2790/pesto-pasta-with-chicken/detail.aspx?prop24=RR_RelatedVideo",
    experience_points: 750
  },
  {
    skill_id: 2,
    name: "Spinach and Mushroom Quesadillas",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/2.jpg",
    link: "http://allrecipes.com/Recipe/Spinach-and-Mushroom-Quesadillas/Detail.aspx?evt19=1",
    experience_points: 1000
  },
  {
    skill_id: 2,
    name: "Quick Beef Stir-Fry",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/2.jpg",
    experience_points: 1250,
    link: "http://allrecipes.com/Recipe/Quick-Beef-Stir-Fry/Detail.aspx?evt19=1"
  },
    {
    skill_id: 2,
    name: "Emily's Excellent Taco Casserole",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/3.jpg",
    experience_points: 1500,
    link: "http://allrecipes.com/Recipe/Emilys-Excellent-Taco-Casserole/Detail.aspx?evt19=1"
  },
    {
    skill_id: 2,
    name: "Taco Pies",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/4.jpg",
    experience_points: 1750,
    link: "http://allrecipes.com/Recipe/Taco-Pies/Detail.aspx?evt19=1"
  },
  {
    skill_id: 2,
    name: "Best Ever Crab Cakes",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/4.jpg",
    experience_points: 2000,
    link: "http://allrecipes.com/Recipe/Best-Ever-Crab-Cakes/Detail.aspx?evt19=1"
  },
  {
    skill_id: 2,
    name: "Easy Sweet and Sour Chicken",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/5.jpg",
    experience_points: 2250,
    link: "http://allrecipes.com/Recipe/Easy-Sweet-and-Sour-Chicken/Detail.aspx?evt19=1"
  },
  {
    skill_id: 2,
    name: "Baked Teriyaki Chicken",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/5.jpg",
    experience_points: 2500,
    link: "http://allrecipes.com/Recipe/Baked-Teriyaki-Chicken/Detail.aspx?evt19=1"
  },
  {
    skill_id: 2,
    name: "Apple Cider Sauce and Pork Loin Chops",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/6.jpg",
    experience_points: 2750,
    link: "http://allrecipes.com/Recipe/Apple-Cider-Sauce-and-Pork-Loin-Chops/Detail.aspx?evt19=1"
  },
  {
    skill_id: 2,
    name: "Chef John's Stuffed Peppers",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/6.jpg",
    experience_points: 3000,
    link: "http://allrecipes.com/Recipe/Chef-Johns-Stuffed-Peppers/Detail.aspx?evt19=1"
  },
  {
    skill_id: 2,
    name: "Fresh Pear Pie",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/7.jpg",
    experience_points: 3250,
    link: "http://allrecipes.com/Recipe/Fresh-Pear-Pie/Detail.aspx?evt19=1"
  },
  {
    skill_id: 2,
    name: "Szechwan Shrimp",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/7.jpg",
    experience_points: 3500,
    link: "http://allrecipes.com/Recipe/Szechwan-Shrimp/Detail.aspx?evt19=1"
  },
  {
    skill_id: 2,
    name: "Gourmet Sweet Potato Classic",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/8.jpg",
    experience_points: 3750,
    link: "http://allrecipes.com/Recipe/Gourmet-Sweet-Potato-Classic/Detail.aspx?evt19=1"
  },
  {
    skill_id: 2,
    name: "Pumpkin Roll II",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/8.jpg",
    experience_points: 4000,
    link: "http://allrecipes.com/Recipe/Pumpkin-Roll-II-2/Detail.aspx?evt19=1"
  },
  {
    skill_id: 2,
    name: "Boeuf Bourguignon",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/9.jpg",
    experience_points: 4250,
    link: "http://knopfdoubleday.com/2009/07/13/julia-childs-boeuf-bourguignon-recipe/"
  },
  {
    skill_id: 2,
    name: "Molten Lava Cakes",
    description: "Follow the recipe ",
    icon_url: "/assets/quest_icons/9.jpg",
    experience_points: 4500,
    link: "http://vimeo.com/58576388"
  },
  {
    skill_id: 3,
    name: "Major Scale",
    description: "Play the major scale starting on E five times without missing a note",
    icon_url: "/assets/quest_icons/1.jpg",
    experience_points: 500,
    link: ""
  },
  {
    skill_id: 3,
    name: "Minor Scale",
    description: "Play the minor scale starting on E five times without missing a note",
    icon_url: "/assets/quest_icons/1.jpg",
    experience_points: 750,
    link: ""
  },
  {
    skill_id: 3,
    name: "Whammy!",
    description: "Bend a note with a whammy bar. Promptly tune your guitar.",
    icon_url: "/assets/quest_icons/2.jpg",
    experience_points: 1000,
    link: ""
  },
  {
    skill_id: 3,
    name: "Smoke on the Water",
    description: "Annoy your friends by playing Smoke on the Water",
    icon_url: "/assets/quest_icons/2.jpg",
    experience_points: 1250,
    link: ""
  },
  {
    skill_id: 3,
    name: "Iron Man",
    description: "Learn Iron Man. You rawk!",
    icon_url: "/assets/quest_icons/2.jpg",
    experience_points: 1500,
    link: ""
  },
  {
    skill_id: 3,
    name: "Dammit",
    description: "Learn Dammit by Blink-182. You're already better than Tom Delonge",
    icon_url: "/assets/quest_icons/3.jpg",
    experience_points: 1750,
    link: ""
  },
  {
    skill_id: 3,
    name: "Imperial March",
    description: "Learn the Imperial March from Star Wars. Just in time for the next 8 movies!",
    icon_url: "/assets/quest_icons/3.jpg",
    experience_points: 2000,
    link: ""
  },
  {
    skill_id: 3,
    name: "A Major",
    description: "Memorize all Positions of the A major chord. Some of them are uncomfortable.",
    icon_url: "/assets/quest_icons/4.jpg",
    experience_points: 2250,
    link: ""
  },
  {
    skill_id: 3,
    name: "Sweet Child of Mine",
    description: "Learn Sweet Child of Mine. Play it without missing a note.",
    icon_url: "/assets/quest_icons/5.jpg",
    experience_points: 2750,
    link: ""
  },
  {
    skill_id: 3,
    name: "Smooth",
    description: "Learn Smooth by Santera. ",
    icon_url: "/assets/quest_icons/6.jpg",
    experience_points: 3250,
    link: ""
  },
  {
    skill_id: 3,
    name: "Freebird!",
    description: "Learn Freebird, don't miss a note.",
    icon_url: "/assets/quest_icons/7.jpg",
    experience_points: 3750,
    link: ""
  },
  {
    skill_id: 3,
    name: "Cliffs Of Dover",
    description: "Learn Cliffs Of Dover by Eric Johnson. You've almost made it.",
    icon_url: "/assets/quest_icons/8.jpg",
    experience_points: 4500,
    link: ""
  },
  {
    skill_id: 3,
    name: "Ronda alla Turca",
    description: "Learn Ronda alla Turca. Play it without missing a note. Insist that your friends stop playing guitar. See the example ",
    icon_url: "/assets/quest_icons/9.jpg",
    experience_points: 5000,
    link: "https://www.youtube.com/watch?v=26HLgXWF-Co"
  },
  {
    skill_id: 4,
    name: "Oil Change",
    description: "Change your own Oil!",
    icon_url: "/assets/quest_icons/1.jpg",
    experience_points: 500,
    link: ""
  },
  {
    skill_id: 4,
    name: "Tire Replacement",
    description: "Replace a tire on your car!",
    icon_url: "/assets/quest_icons/2.jpg",
    experience_points: 1000,
    link: ""
  },
  {
    skill_id: 4,
    name: "Repair Tire(Plug and Patch)",
    description: "Use a plug and patch to repair a tire.",
    icon_url: "/assets/quest_icons/2.jpg",
    experience_points: 1250,
    link: ""
  },
  {
    skill_id: 4,
    name: "4 Wheel Alignment",
    description: "Perform a 4 wheel alignment on a car.",
    icon_url: "/assets/quest_icons/3.jpg",
    experience_points: 1500,
    link: ""
  },
  {
    skill_id: 4,
    name: "Fluid Flush",
    description: "Perform break, power steering and transmission fluid flushes.",
    icon_url: "/assets/quest_icons/3.jpg",
    experience_points: 1750,
    link: ""
  },
  {
    skill_id: 4,
    name: "Coolant Service",
    description: "Perform Coolant Service work on your car",
    icon_url: "/assets/quest_icons/4.jpg",
    experience_points: 2000,
    link: ""
  },
  {
    skill_id: 4,
    name: "Minor Manufacture Recalls",
    description: "Perform a minor manufacture recall.",
    icon_url: "/assets/quest_icons/5.jpg",
    experience_points: 2500,
    link: ""
  },
  {
    skill_id: 4,
    name: "Welding",
    description: "Get a welder and get to work!",
    icon_url: "/assets/quest_icons/6.jpg",
    experience_points: 3000,
    link: ""
  },
  {
    skill_id: 4,
    name: "A/C Diagnosis",
    description: "Perform an AC Diagnosis",
    icon_url: "/assets/quest_icons/7.jpg",
    experience_points: 3500,
    link: ""
  },
  {
    skill_id: 4,
    name: "Perform Engine Diagnosis",
    description: "Run an Engine Diagnosis",
    icon_url: "/assets/quest_icons/8.jpg",
    experience_points: 4500,
    link: ""
  },
  {
    skill_id: 4,
    name: "Rebuild Engine",
    description: "Rebuild you cars engine. Get that grease off of you. Have a beer.",
    icon_url: "/assets/quest_icons/9.jpg",
    experience_points: 5500,
    link: ""
  }










  ]);

  User.create([
    {
      username: "brandonjyuhas",
      email: "brandonjyuhas@gmail.com",
      password: "password",
      icon_url: "/assets/user_icons/1.jpg"
    }
    ])