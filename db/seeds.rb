# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
User.create(
  email: "eryk@gmail.com",
  password: "123456"
);
User.create(
  email: "mark@gmail.com",
  password: "123456"
);
User.create(
  email: "paul@gmail.com",
  password: "123456"
);

Address.create(  
    street_number: "17",
    street: "Kemp Street",
    suburb: "Thornbury",
    state: "VIC",
    country_code: "Australia",
    postal_code: "3071",
    user_id: 1,
);
Address.create(
    street_number: "55",
    street: "Sydney Road",
    suburb: "Brunswick",
    state: "VIC",
    country_code: "Australia",
    postal_code: "3055",
    user_id: 2
);
Address.create(  
    street_number: "13",
    street: "Lomon Terrace",
    suburb: "East Brisbane",
    state: "QLD",
    country_code: "Australia",
    postal_code: "4069",
    user_id: 3
);
Bicycle.create(

  title: "Cannondale 2 years old",
  price: 659.0,
  description: "My faovurite bicycle for sale, I have had it for a very long timem and it has never let me down",
  brand: "Cannondale",
  size: "L(medium)",
  colour: "silver",
  gender: "unisex",
  year: "2017",
  user_id: 1,
  # address_id: 1


)
Bicycle.create(
  title: "56cm Azzurri Primo Road Bike",
  price: 450.0,
  description: "56 cm Azzurri Columbus Primo 2007 model frame in Red/White. Alloy frame with carbon forks and rear stays. Will suit male from 5 8 -6 1 tall",
  brand: "Azzuri",
  size: "L(medium)",
  colour: "red",
  gender: "male",
  year: "2007",
  user_id: 2,
  # address_id: 2

)
Bicycle.create(

  title: "mountain bike TREK Fuel ",
  price: 950.0,
  description: " this 2015 trek fuel EX 9, 29 inch wheel is in excellent condition, has a couple of tiny marks where cables run. Has done less than 10 hours.",
  brand: "Trek",
  size: "S(small)",
  colour: "black",
  gender: "male",
  year: "2017",
  user_id: 3,
  # address_id: 3


)
Bicycle.create(

  title: "Cannondale 2 years old",
  price: 659.0,
  description: "My faovurite bicycle for sale, I have had it for a very long timem and it has never let me down",
  brand: "Cannondale",
  size: "L(medium)",
  colour: "silver",
  gender: "unisex",
  year: "2017",
  user_id: 2,
  # address_id: 1


)
Bicycle.create(
  title: "56cm Azzurri Primo Road Bike",
  price: 450.0,
  description: "56 cm Azzurri Columbus Primo 2007 model frame in Red/White. Alloy frame with carbon forks and rear stays. Will suit male from 5 8 -6 1 tall",
  brand: "Azzuri",
  size: "L(medium)",
  colour: "red",
  gender: "male",
  year: "2007",
  user_id: 1,
  # address_id: 2

)
Bicycle.create(

  title: "mountain bike TREK Fuel ",
  price: 950.0,
  description: " this 2015 trek fuel EX 9, 29 inch wheel is in excellent condition, has a couple of tiny marks where cables run. Has done less than 10 hours.",
  brand: "Trek",
  size: "S(small)",
  colour: "black",
  gender: "male",
  year: "2017",
  user_id: 3,
  # address_id: 3


)
uploader = ImageUploader.new(:store)
file1 = File.new(Rails.root.join('app/assets/images/avatar4.jpeg'))
file2 = File.new(Rails.root.join('app/assets/images/avatar5.jpeg'))
file3 = File.new(Rails.root.join('app/assets/images/avatar6.jpeg'))
uploaded_file = uploader.upload(file1)

Profile.create(
    first_name: "Eryk",
    last_name: "Grasela",
    avatar_data: uploaded_file.to_json,
    username: "grasel",
    user_id: 1
)

uploaded_file = uploader.upload(file2)

Profile.create(
    first_name: "Mark",
    last_name: "Sprinter",
    avatar_data: uploaded_file.to_json,
    username: "sprints",
    user_id: 2
)

uploaded_file = uploader.upload(file3)

Profile.create(
    first_name: "Paul",
    last_name: "Jogger",
    avatar_data: uploaded_file.to_json,
    username: "sprints",
    user_id: 3
)

file4 = File.new(Rails.root.join('app/assets/images/1.jpg'))
file5 = File.new(Rails.root.join('app/assets/images/2.jpg'))
file6 = File.new(Rails.root.join('app/assets/images/3.jpg'))
file7 = File.new(Rails.root.join('app/assets/images/4.jpg'))
file8 = File.new(Rails.root.join('app/assets/images/5.jpg'))
file9 = File.new(Rails.root.join('app/assets/images/6.jpg'))


uploaded_file = uploader.upload(file4)
Photo.create(
    image_data: uploaded_file.to_json,
    bicycle_id: 1
)


uploaded_file = uploader.upload(file5)

Photo.create(
    image_data: uploaded_file.to_json,
    bicycle_id: 2
)

uploaded_file = uploader.upload(file6)
Photo.create(
    image_data: uploaded_file.to_json,
    bicycle_id: 3
)
uploaded_file = uploader.upload(file7)
Photo.create(
    image_data: uploaded_file.to_json,
    bicycle_id: 4
)


uploaded_file = uploader.upload(file8)

Photo.create(
    image_data: uploaded_file.to_json,
    bicycle_id: 5
)

uploaded_file = uploader.upload(file9)
Photo.create(
    image_data: uploaded_file.to_json,
    bicycle_id: 6
)




Review.create(
    content: "Very easy to deal with",
    reviewer_id: 1,
    rating: 4,
    reviewed_user_id: 2,
    user_id: 1
)

Review.create(
    content: "THe bicycle I bought was amazing!",
    reviewer_id: 1,
    rating: 5,
    reviewed_user_id: 3,
    user_id: 2
)

Review.create(
    content: "I tried contacting the seller many time and it didn't work!",
    reviewer_id: 2,
    rating: 1,
    reviewed_user_id: 3,
    user_id: 3
)

Review.create(
    content: "So helpful and anwswered all my questions!",
    reviewer_id: 3,
    rating: 4,
    reviewed_user_id: 1,
    user_id: 1
)

Review.create(
    content: "I wouldn't recommend this user, the bicycle broke down very quickly",
    reviewer_id: 1,
    rating: 4,
    reviewed_user_id: 2,
    user_id: 2
)


Query.create(
  question: "Do the tyres need changing?",
  answer: "They should be still fine ",
  bicycle_id: 1,
    user_id: 3

)

Query.create(
  question: "How long have you had the bicycle for?",
  answer: "Only for 2 years  ",
  bicycle_id: 2,
    user_id: 1

)

Query.create(
  question: "Has this bicycle ever been crashed?",
  answer: "No never  ",
  bicycle_id: 3,
    user_id: 1

)
Query.create(
  question: "Can you deliver to broadmeadows?",
  answer: "No sorry, it's too far",
  bicycle_id: 3,
    user_id: 3

)


