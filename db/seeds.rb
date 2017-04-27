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
  {title: "Rush Hour", img_url: "https://media.licdn.com/mpr/mpr/shrinknp_800_800/p/8/005/09a/04a/1dcc9de.jpg"},
  {title: "Phone battery", img_url: "https://s-media-cache-ak0.pinimg.com/originals/f8/ff/97/f8ff97a199e136a5a1ba9a9a96b8654e.png"},
  {title: "trash", img_url: "https://betanews.com/wp-content/uploads/2015/05/peeyouuutrasgh-600x528.jpg"},
  {title: "texts", img_url: "http://catplanet.org/wp-content/uploads/2014/06/I-hate-group-texts.jpg"},
  {title: "dishes", img_url: "https://previews.123rf.com/images/joebelanger/joebelanger1012/joebelanger101200049/8460455-A-woman-wearing-dish-washing-gloves-and-an-apron-contemplates-doing-the-dishes--Stock-Photo.jpg"},
  {title: "shots", img_url: "http://www.wcnc.com/img/resize/content.wcnc.com/photo/2017/01/09/bartender%20pouring%20shots_1484006796416_7645882_ver1.0.jpg?preset=534-401"},
  {title: "beer", img_url: "https://dc8gwjuur0w0x.cloudfront.net/lists/avatars/000/000/047/original_o-PINT-GLASS-BEER-facebook.jpg?1473216955"},
  {title: "tire", img_url: "https://i.ytimg.com/vi/3aQRO29ZzbE/maxresdefault.jpg"},
  {title: "police", img_url: "http://www.rantlifestyle.com/wp-content/uploads/2015/04/123318473.jpg"},
  {title: "club", img_url: "http://karafranker.com/wp-content/uploads/2014/06/e11even-club-miami-beach.jpg"},
  {title: "bar", img_url: "http://www.lagniappehouse.com/uploads/1/4/4/0/14407548/3136519_orig.jpg"},
  {title: "beach", img_url: "https://static.pexels.com/photos/68672/beach-beverage-caribbean-cocktail-68672.jpeg"},
  {title: "snow", img_url: "https://cdn.pixabay.com/photo/2015/05/09/14/34/allgau-759780_1280.jpg"},
  {title: "gas", img_url: "https://usercontent1.hubstatic.com/12175858_f520.jpg"},
  {title: "third_wheel", img_url: "https://68.media.tumblr.com/a7f0c03d38736b7a8a621d22a865c971/tumblr_o2irwxvqAk1qbjrrso4_500.jpg"},
  {title: "smell", img_url: "https://thepeoplespharmacy-graedonenterpris.netdna-ssl.com/wp-content/uploads/Smelly_Armpit-Woman.jpg"},
  {title: "foot", img_url: "http://www.thealternativedaily.com/wp-content/uploads/2014/07/stinky-feet.jpg"}



]

a.each do |v|
  Topic.create(title: v[:title], img_url: v[:img_url])
  puts "Created #{v}"
end
