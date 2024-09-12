# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.create(email: 'cristobald@me.com', password: '123123', first_name: 'Cristóbal', last_name: 'Domínguez')

p1 = Post.new(user: user, body: 'Muy lejos, más allá de las montañas de palabras, alejados de los países de las vocales y las consonantes, viven los textos simulados.')
p1.images.attach(io: File.open('public/image_01.jpg'), filename: 'image_01.jpg')
p1.images.attach(io: File.open('public/image_02.jpg'), filename: 'image_02.jpg')
p1.images.attach(io: File.open('public/image_03.jpg'), filename: 'image_03.jpg')
p1.images.attach(io: File.open('public/image_04.jpg'), filename: 'image_04.jpg')
p1.images.attach(io: File.open('public/image_05.jpg'), filename: 'image_05.jpg')
p1.save

p2 = Post.new(user: user, body: 'Viven aislados en casas de letras, en la costa de la semántica, un gran océano de lenguas. Un riachuelo llamado Pons fluye por su pueblo y los abastece con las normas necesarias.')
p2.images.attach(io: File.open('public/image_06.jpg'), filename: 'image_06.jpg')
p2.images.attach(io: File.open('public/image_07.jpg'), filename: 'image_07.jpg')
p2.images.attach(io: File.open('public/image_08.jpg'), filename: 'image_08.jpg')
p2.images.attach(io: File.open('public/image_09.jpg'), filename: 'image_09.jpg')
p2.images.attach(io: File.open('public/image_10.jpg'), filename: 'image_10.jpg')
p2.save

p3 = Post.new(user: user, body: 'Hablamos de un país paraisomático en el que a uno le caen pedazos de frases asadas en la boca.')
p3.images.attach(io: File.open('public/image_11.jpg'), filename: 'image_11.jpg')
p3.images.attach(io: File.open('public/image_12.jpg'), filename: 'image_12.jpg')
p3.images.attach(io: File.open('public/image_13.jpg'), filename: 'image_13.jpg')
p3.images.attach(io: File.open('public/image_14.jpg'), filename: 'image_14.jpg')
p3.images.attach(io: File.open('public/image_15.jpg'), filename: 'image_15.jpg')
p3.save
