# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Topic.destroy_all
a = [
  {title: "Adam Sandler", img_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRUSBT2WEejDoMBrVxNfQyShSJDZ79wwLdRbFHsA4ifXKfHhupe8K767rY"},
  {title:"Tofu", img_url: "http://images.wisegeek.com/tofu-cubes.jpg"},
  {title:"Lacross", img_url: "https://www.nfhs.org/media/1775/boys-lacrosse-2.jpg"},
  {title: "Dirty Laundry", img_url: "https://pdavedotme.files.wordpress.com/2014/07/dirty-laundry-600x314.jpg"}
]

a.each do |v|
  Topic.create(title: v[:title], img_url: v[:img_url])
  puts "Created #{v}"
end
