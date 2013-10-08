require 'faker'
real_estate = Category.create name: "Real estate"
technology = Category.create name: "Technology"
clothes = Category.create name: "Clothes"
furniture = Category.create name: "Furniture"
encounters = Category.create name: "Encounters"


real_estate.posts << Post.create(title:"Hacker House",
                                 description: "Home of the best hackers in town",
                                 contact: Faker::Internet.email,
                                 photo_url: "http://www.whitegadget.com/attachments/pc-wallpapers/85254d1320380902-house-house-wallpaper.jpg")


technology.posts << Post.create( title:"Macbook Pro mint",
                                 description: "Every hacker needs one",
                                 contact: Faker::Internet.email,
                                 photo_url: "http://cdn.cultofmac.com/wp-content/uploads/2012/12/macbook_pro_13inch_35440710_04_610x436.jpg")

clothes.posts << Post.create(    title:"DBC short-sleeve T-shirt M",
                                 description: "Makes you look cool instantly",
                                 contact: Faker::Internet.email,
                                 photo_url: "http://wordsbrand.com/wp-content/uploads/2012/11/THIS_IS_A_DESIGNER_TSHIRT_AA_TEE.jpg")

furniture.posts << Post.create(  title:"Red couch",
                                 description: "A nice couch to hack on",
                                 contact: Faker::Internet.email,
                                 photo_url: "http://duotaiyao.com/wp-content/uploads/2013/09/living-room-with-red-couches_3.jpg")

encounters.posts << Post.create( title:"Looking for a casual hook-up",
                                 description: "Ball so hard",
                                 contact: "Henry.Nichols@gmail.com",
                                 photo_url: "Henry.jpg")
