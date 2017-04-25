# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Topic.destroy_all
a = [
  {title: "Adam Sandler", img_url: "http://static1.squarespace.com/static/535ec441e4b0fcd1576291ed/5395e876e4b0066454a631c1/54bd403ee4b076c29fca0dcb/1421958211427/?format=1000w"},
  {title: "Parking Ticket", img_url: "https://www.ticketsnipers.com/assets/images/article/231.jpg"},
  {title:"Lacross", img_url: "https://www.nfhs.org/media/1775/boys-lacrosse-2.jpg"},
  {title: "Dirty Laundry", img_url: "https://pdavedotme.files.wordpress.com/2014/07/dirty-laundry-600x314.jpg"},
  {title: "Dirty Diapers", img_url: "https://anishagold.files.wordpress.com/2017/02/changing-nappies-changing-diaper.jpg"},
  {title: "Monday", img_url: "https://i.imgflip.com/18labz.jpg"},
  {title: "DMV", img_url: "https://img.memesuper.com/5e19a4a81247b69f8582bd739665bd97_waiting-in-line-at-the-dmv-waiting-at-the-dmv-meme_560-335.jpeg"},
  {title: "Baby", img_url: "http://s2.quickmeme.com/img/ef/ef77030b7381bbc0ebccfffa1151e13f29e136514931e695dae6da9c08b7473b.jpg"},
  {title: "Flight_delay", img_url: "http://www.jamaicaobserver.com/assets/12711527/flight-delays.jpg"},
  {title: "Rush Hour", img_url: "https://media.licdn.com/mpr/mpr/shrinknp_800_800/p/8/005/09a/04a/1dcc9de.jpg"}
]

a.each do |v|
  Topic.create(title: v[:title], img_url: v[:img_url])
  puts "Created #{v}"
end
