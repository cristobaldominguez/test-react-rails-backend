# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.new(email: 'cristobald@me.com', password: '123123', first_name: 'Cristóbal', last_name: 'Domínguez')
user.avatar.attach(io: File.open("public/emoji.jpg"), filename: 'emoji.jpg')
user.save

groups = [
  ['image_40.jpg', 'image_41.jpg', 'image_42.jpg', 'image_43.jpg', 'image_44.jpg'],
  ['image_32.jpg', 'image_33.jpg', 'image_34.jpg', 'image_35.jpg', 'image_36.jpg', 'image_37.jpg', 'image_38.jpg', 'image_39.jpg'],
  ['image_25.jpg', 'image_26.jpg', 'image_27.jpg', 'image_28.jpg', 'image_29.jpg', 'image_30.jpg', 'image_31.jpg'],
  ['image_21.jpg', 'image_22.jpg', 'image_23.jpg', 'image_24.jpg'],
  ['image_15.jpg', 'image_16.jpg', 'image_17.jpg', 'image_18.jpg', 'image_19.jpg', 'image_20.jpg'],
  ['image_11.jpg', 'image_12.jpg', 'image_13.jpg', 'image_14.jpg'],
  ['image_09.jpg', 'image_10.jpg'],
  ['image_08.jpg'],
  ['image_04.jpg', 'image_05.jpg', 'image_06.jpg', 'image_07.jpg'],
  ['image_01.jpg', 'image_02.jpg', 'image_03.jpg']
]

texts = [
  'Muy lejos, más allá de las montañas de palabras, alejados de los países de las vocales y las consonantes, viven los textos simulados.',
  'Viven aislados en casas de letras, en la costa de la semántica, un gran océano de lenguas. Un riachuelo llamado Pons fluye por su pueblo y los abastece con las normas necesarias.',
  'Hablamos de un país paraisomático en el que a uno le caen pedazos de frases asadas en la boca.',
  'Ni siquiera los todopoderosos signos de puntuación dominan a los textos simulados; una vida, se puede decir, poco ortográfica.',
  'Pero un buen día, una pequeña línea de texto simulado, llamada Lorem Ipsum, decidió aventurarse y salir al vasto mundo de la gramática.',
  'El gran Oxmox le desanconsejó hacerlo, ya que esas tierras estaban llenas de comas malvadas, signos de interrogación salvajes y puntos y coma traicioneros, pero el texto simulado no se dejó atemorizar.',
  'Empacó sus siete versales, enfundó su inicial en el cinturón y se puso en camino.',
  'Cuando ya había escalado las primeras colinas de las montañas cursivas, se dio media vuelta para dirigir su mirada por última vez, hacia su ciudad natal Letralandia, el encabezamiento del pueblo Alfabeto y el subtítulo de su propia calle, la calle del renglón.',
  'Una pregunta retórica se le pasó por la mente y le puso melancólico, pero enseguida reemprendió su marcha. De nuevo en camino, se encontró con una copia.',
  'La copia advirtió al pequeño texto simulado de que en el lugar del que ella venía, la habían reescrito miles de veces y que todo lo que había quedado de su original era la palabra "y", así que más le valía al pequeño texto simulado volver a su país, donde estaría mucho más seguro.'
]

groups.each.with_index do |group, index|
  post = Post.new(user: user, body: texts[index])
  group.each do |image|
    post.images.attach(io: File.open("public/#{image}"), filename: image)
  end
  post.save
  puts "Saved Post #{post.id}"
end
