puts "🌱 Seeding spices..."

# Seed your database here
comments = ["w3schools helped me understand the useEffect hooks.As much as I tried to also refer to other sources, it helped me", "This source is a good one, once to dedicate time and study it well, the concept just gets in", "Though I have to spend a lot of time refering to many links, it's a good one", "Gives better details but it's not enough to get the concept, I do go over and over again", "This one I have to be reading it everyday because I like it", "For the love of programming, I wanna read this to sharpen my skills", "As much as I might say I don't like reading it, nothing will deter me from looking at it once in a while", "Damn, I have to go through this some other time", "I would say honestly that I had to spend long hours to get a grasp of this", "Good! I would say cool for sure", "I feel energized by this", "Yes it's cool", "I love this, and I go through it over and over again", "This one really made me so confident because it proved to be comprehensive", "Uhuu! Yeah I liked it", "Not bad but I had to"]

Material.create(name: "React useEffect Hooks", source: "w3schools", likes: 0)
Material.create(name: "Active Record Migrations", source: "Ruby on Rails Guide", likes: 0)
Material.create(name: "Object Relational Modelling", source: "Youtube", likes: 0)
Material.create(name: "Ruby Hashes", source: "Javatpoint", likes: 0)
Material.create(name: "React components", source: "Tutorialspoint", likes: 0)
Material.create(name: "Leading Self", source: "LinkedIn learning", likes: 0)
Material.create(name: "Figma Design", source: "Scrimba.com", likes: 0)
Material.create(name: "Flexbox Basics", source: "Youtube, Kelvin Powell", likes: 0)
Material.create(name: "Motion Graphics", source: "Youtube", likes: 0)
Material.create(name: "Communication for impact", source: "LinkedIn Learning", likes: 0)
Material.create(name: "Web API Basics with Sinatra", source: "Moringa School Canvas", likes: 0)
Material.create(name: "Procs and closures", source: "Hackerrank", likes: 0)
Material.create(name: "Typscript", source: "Scrimba.com", likes: 0)
Material.create(name: "Ruby Object Oriented Programming", source: "Moringa School Canvas", likes: 0)
Material.create(name: "JavaScript DOM", source: "Javatpoint and tutorialspoint", likes: 0)
Material.create(name: "Tuples and Lists", source: "Scrimba.com", likes: 0)

Material.all.each do |material|
    Comment.create(text: comments.sample, material_id: material.id)
end

puts "✅ Done seeding!"
