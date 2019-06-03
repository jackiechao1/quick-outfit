# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
<<<<<<< HEAD
#   Character.
=======
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
User.destroy_all

paths = [
	'/Users/jackie/desktop/uploads/1.jpg',
	'/Users/jackie/desktop/uploads/2.jpg',
	# '/Users/jackie/desktop/uploads/3.jpg',
	# '/Users/jackie/desktop/uploads/4.jpg',
	# '/Users/jackie/desktop/uploads/5.jpg',
	# '/Users/jackie/desktop/uploads/6.jpg',
	# '/Users/jackie/desktop/uploads/7.jpg',
	# '/Users/jackie/desktop/uploads/8.jpg',
	# '/Users/jackie/desktop/uploads/9.jpg',
	# '/Users/jackie/desktop/uploads/10.jpg'
]
User.create!(email: "test@email.com", password: "123456")

callbacks = []
paths.each do |path|
	callback = Cloudinary::Uploader.upload(path)
	callbacks << callback
end

callbacks.each do |callback|
	item = Item.new
	item.user = User.first
	item.seed_image = callback["secure_url"]
	item.save!
end
>>>>>>> b382ef1f6a58ba7b8071ae177ea0f88d140edbd4
