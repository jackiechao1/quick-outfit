# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)

OutfitItem.destroy_all
PlannedOutfit.destroy_all
Outfit.destroy_all
Item.destroy_all
User.destroy_all

marc = User.create!(email: "marc@email.com", password: "123456")
User.create!(email: "admin@email.com", password: "123456", admin: true)
puts "creating-items"
item_17 = Item.create!(counter: 19, category: "top", color: "white", style: "casual", photo: File.open("db/seed_images/tshirt-top-casual-white.jpg"), user: marc)

item_1 = Item.create!(counter: 9, category: "top", color: "black", style: "work", photo: File.open("db/seed_images/jacket-top-work-black.jpg"), user: marc)

item_19 = Item.create!(counter: 1, category: "top", color: "brown", style: "casual", photo: File.open("db/seed_images/leopard-vest-bottom.jpeg"), user: marc)

item_7 = Item.create!(counter: 11, category: "top", color: "yellow", style: "casual", photo: File.open("db/seed_images/raincoat-top-casual-yellow.jpeg"), user: marc)

item_9 = Item.create!(counter: 14, category: "top", color: "white", style: "casual", photo: File.open("db/seed_images/shirt-top-shirt-white.jpg"), user: marc)

item_3 = Item.create!(counter: 20, category: "top", color: "brown", style: "casual", photo: File.open("db/seed_images/jackety-top-casual-brown.jpg"), user: marc)

item_8 = Item.create!(counter: 13, category: "top", color: "black", style: "casual", photo: File.open("db/seed_images/shirt-top-casual-black.jpg"), user: marc)

item_16 = Item.create!(counter: 11, category: "top", color: "blue", style: "sportswear", photo: File.open("db/seed_images/t-shirt-top-sports-blue.jpg"), user: marc)

item_2 = Item.create!(counter: 9, category: "top", color: "grey", style: "work", photo: File.open("db/seed_images/jacket-top-work-grey.jpg"), user: marc)

item_18 = Item.create!(counter: 13, category: "top", color: "white", style: "work", photo: File.open("db/seed_images/white-shirt-work-shirt.jpg"), user: marc)

item_4 = Item.create!(counter: 10, category: "bottom", color: "black", style: "casual", photo: File.open("db/seed_images/jean-botton-casual-black.jpg"), user: marc)

item_14 = Item.create!(counter: 12, category: "bottom", color: "red", style: "sportswear", photo: File.open("db/seed_images/short-bottom-sports-red.jpg"), user: marc)

item_5 = Item.create!(counter: 9, category: "bottom", color: "blue", style: "casual", photo: File.open("db/seed_images/jeans-top-casual-blue.png"), user: marc)

item_6 = Item.create!(counter: 9, category: "bottom", color: "black", style: "work", photo: File.open("db/seed_images/pants-botton-work-black.jpg"), user: marc)

item_15 = Item.create!(counter: 18, category: "bottom", color: "green", style: "casual", photo: File.open("db/seed_images/shortpant-botton-casual-green.jpeg"), user: marc)

item_12 = Item.create!(counter: 4, category: "shoes", color: "green", style: "casual", photo: File.open("db/seed_images/shoes-casual-shoes-green.jpg"), user: marc)

item_10 = Item.create!(counter: 21, category: "shoes", color: "brown", style: "casual", photo: File.open("db/seed_images/shoes-brown-casual.jpg"), user: marc)

item_11 = Item.create!(counter: 9, category: "shoes", color: "black", style: "work", photo: File.open("db/seed_images/shoes-casual-black.jpeg"), user: marc)

item_13 = Item.create!(counter: 9, category: "shoes", color: "yellow", style: "sportswear", photo: File.open("db/seed_images/shoes-sports-shoes-yellow.jpg"), user: marc)




puts "creating-outfits"
outfit_3 = Outfit.create!(name: "sport", user: marc, status: "validated", rating: 3, review: "Let score some goals ! 😉")

OutfitItem.create!(outfit: outfit_3, item: item_13)
OutfitItem.create!(outfit: outfit_3, item: item_14)
OutfitItem.create!(outfit: outfit_3, item: item_16)

outfit_1 = Outfit.create!(name: "interview", user: marc, status: "validated", rating: 4, review: "great for a job interviews")

OutfitItem.create!(outfit: outfit_1, item: item_1)
OutfitItem.create!(outfit: outfit_1, item: item_6)
OutfitItem.create!(outfit: outfit_1, item: item_11)
OutfitItem.create!(outfit: outfit_1, item: item_18)

outfit_4 = Outfit.create!(name: "interview v2", user: marc, status: "validated", rating: 3, review: "it's fine but generally it's better to have the same color in pants and vest 🤔 ")

OutfitItem.create!(outfit: outfit_4, item: item_2)
OutfitItem.create!(outfit: outfit_4, item: item_6)
OutfitItem.create!(outfit: outfit_4, item: item_11)
OutfitItem.create!(outfit: outfit_4, item: item_18)

outfit_2 = Outfit.create!(name: "casual day", user: marc, status: "validated", rating: 5, review: "perfect for a casual day 👌")

OutfitItem.create!(outfit: outfit_2, item: item_3)
OutfitItem.create!(outfit: outfit_2, item: item_4)
OutfitItem.create!(outfit: outfit_2, item: item_17)
OutfitItem.create!(outfit: outfit_2, item: item_10)



puts "finish"
#category, collection: ['top', 'bottom', 'shoes'] %>
#color, collection: ['white', 'black', 'grey', 'red', 'brown', 'blue', 'green', 'pink', 'yellow'] %>
#style, collection: ['work', 'casual', 'sportswear'] %>


# paths = [
# 	'/Users/jackie/desktop/uploads/1.jpg',
# 	'/Users/jackie/desktop/uploads/2.jpg',
# 	# '/Users/jackie/desktop/uploads/3.jpg',
# 	# '/Users/jackie/desktop/uploads/4.jpg',
# 	# '/Users/jackie/desktop/uploads/5.jpg',
# 	# '/Users/jackie/desktop/uploads/6.jpg',
# 	# '/Users/jackie/desktop/uploads/7.jpg',
# 	# '/Users/jackie/desktop/uploads/8.jpg',
# 	# '/Users/jackie/desktop/uploads/9.jpg',
# 	# '/Users/jackie/desktop/uploads/10.jpg'
# ]

# callbacks = []
# paths.each do |path|
# 	callback = Cloudinary::Uploader.upload(path)
# 	callbacks << callback
# end

# callbacks.each do |callback|
# 	item = Item.new
# 	item.user = User.first
# 	item.seed_image = callback["secure_url"]
# 	item.save!
# end

