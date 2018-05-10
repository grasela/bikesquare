# bikesquaremel.herokuapp.com

[https://bikesquaremel.herokuapp.com](https://bikesquaremel.herokuapp.com)
# List of contents 
1. Problem 
2. Solution
3. Trello Board
4. User Stories
5. ERD (Entetity Relationship Diagram)
6. Models
7. Controllers
8. Mood Board/ Inspiration
9. Wireframes 
10. Features
11. Ruby Gems
12. Challenges 
13. Final product and future developments


## 1. Problem 
In March 2017, bicycles in Melbourne made up 16 per cent of all vehicle movements into the city in the morning peak period (between 7am and 10am). In March 2008 the figure was nine per cent. Just to put it in perspective Royal Parade takes 3654 cars in the morning on the inbound route to the city, while at the same time there are 1779 bicycles used for a daily commute. The population of Melbourne has grown from 3.85 million in 2011 to 4.82 million in 2017. That means on average we have gained 160 000 cyclists only in 6 years. 	3.6 million (17% of) people ride a bike in Australia each week and 7.4 million (37%) had ridden at least once in the previous year.5.1% of Australians are commuter cyclists – i.e. had ridden for transport purposes over the previous week, compared with 14.1% for recreation or exercise, mostly children. Plenty of Australians are in need of a bicycle and buying a brand new bicycle can be expensive and a lot of people my not be able to commit to a high cost of the investement.
Currently if one is on a look for a second hand bicycle, they will struggle filtering through hundreds of offerings on gumtree that lack consistency (particurarly if it comes to bicycle size or location).Searching Facebook Marketplace is even harder as most additional specific information has to be confirmed directly with the seller over Messanger. Speaking to a few marketplace users, they have confirmed that having have to exchange direct messages can be quite time consuming. There is a definate need for clearly published information that will allow the buyer to make their decision. 
## 2. Solution

Cycling is a lot more often a viable altrenative to our jammed raods and second hand bikes become a great option for entry cyclists and even everyday commuters. If you are searching for second hand bike you are forced to monitor not only Gumtree (which has offering of every other item you can imagine apart from bicycles) but also Facebook marketplace which allows for quick postings. I have noticed an increase in demand for closed groups as bicycle resource (e.g. Buy/Sell road cycling Victoria ). bikeSquare consolidates second used bicycle postings but also implements features to improve communication and make selling and buying second hand bicycles more time and cost effective. It doesn't accept real/official bicycles shop to post their offerings in order to maintain the community-orientated character of the space. The platform offers secure payment method which can be done in real time during the bicycle inspection. This is a proposed solution to having have to carry different amount of cash for various bicycle inspections. Every bicycle has a separate Q & A board which will save the seller a lot of time on answering one question only once as well as will keep information transparent for other buyers/viewers. The board will automatically support the posting/add itself. 

### Current painpoints: 

- Painpoint 1: sellers have to respond to multiple messages. Plenty of them are referring to the same aspect. 
- Response: Ad board allows other users read answers to previously asked questions. 

- Painpoint 2: users of Facebook Marketplace or Gumtree have to bring cash to every inspection, just in case they decide to buy the item. 
- Response: Purchases can be done only via secure online payment system pending satisfactory inspection . The seller receives instant notification for the fund to have cleared and the buyer can come home with the bicycle 

- Painpoint 3: BikeExchange and even Gumtree accepts offerings from official shops. These adds create unneecessary noise in the ads speace which makes it difficult to filter through
- Response: bikeSquare accepts offers only for second hand pre owned bicles


## 3. Trello Board
[bikeSquare Trello](https://trello.com/b/CI3vl2gr/bikesquare)
![bikeSquare Trello](/app/assets/images/trello2.png "bikeSquare trello")

## 4. User Stories
[bikeSquare Trello](https://trello.com/b/CI3vl2gr/bikesquare)
![bikeSquare Trello](/app/assets/images/trello3.png "bikeSquare trello")
## 5. ERD (Entetity Relationship Diagram)
![bikeSquare ERD ](/app/assets/images/dbdesigner.png "bikeSquare ERD")

## 6. Models 
* User
* Bicycle
* Photo 
* Profile
* Purchase
* Query
* Review


## 7. Controllers

* bicycles controllers
* photos controllers
* profile controllers
* purchase controllers
* queries controllers
* review controllers

## 8. Mood Board/ Inspiration
[Moodboard/Inspiration](https://www.pinterest.com.au/erykgrasela/bikesquare/)
![bikeSquare Wireframes](/app/assets/images/moodboard1.png)
![bikeSquare Wireframes](/app/assets/images/moodboard2.png)

## 9. Wireframes 
[Wireframes](https://www.figma.com/file/Zbx8HqptQkWiph6bHu5ufR9S/BikesSquare)
![bikeSquare Wireframes](/app/assets/images/wireframes.png)
![bikeSquare Wireframes](/app/assets/images/figma1.png)
![bikeSquare Wireframes](/app/assets/images/figma2.png)
![bikeSquare Wireframes](/app/assets/images/figma3.png)
## 10. Features

* Not signed in users can view only welcome page and sign up/login page. Can can view a bicycle but they cannot enquire about the bicycle until signed in
* Signed in users are automatically prompted to fill the profile otherwise they are locked out. The application won't accept any activity without profile information 

* Users can posts bikes, add photos, add locations to their profiles as well as view locations. They can also leave reviews for users or ask public questions on the board.
* Users whose bicycles are enquiried about can view "answer question" field which is otherwise not available , otherwise other users see that the question is pending answer from the owner 

* Contact page sends email to the owner of the app
* The app accepts payments using Stripe , it obtaines and saves stripe_id 

## 11. Ruby Gems
* Rspec
* Devise
* Geocoder
* Stripe
* Pundit
* font-awesome-rails
* mini-magick
* shrine
* country_select
* aws-s3
* mailgun

## 12. Challenges 
One of the main challenges was to create a pragmatic and useful database that can communicate very well. 
Having so many options for edditing/creating and managing views (bicycles, reviews, queries, profiles) posed a challenge for the views and functionality. 

From technical point of view one of the big challenges was creating reviewers and reviewed_users as foreign key to Users table. Eventually , with the help of the docs and StackOverflow a solution has been obtained which allowed me to access both from Review table. 

* user.rb
```ruby
  has_many :done_reviews,    class_name: "Review", foreign_key: "reviewer_id"
  has_many :received_reviews, class_name: "Review", foreign_key: "reviewed_user_id"
```

* review.rb
```ruby
  belongs_to :reviewer, class_name: "User", foreign_key: "reviewer_id"
  belongs_to :reviewed_user, class_name: "User", foreign_key: "reviewed_user_id"
```

Integrating Shrine AWS S3 uploads with Heroku environment has created some problems with accessing seeded data. Seeding image and avatar data using Shrine AWS S3 has made it a little more complex but unavoidable.

## 13. Future developments

The current version, given the amount of time that has been spent on it, is functional and operating. Users can uplaod their data as well as post bicycle including editing photos and other information. The funcitonality of the quenstions board has been really important and at the moment is good enough for th app to operate. The owner of the bicycle receives an email when they get a new question, which later on can be answered under their add. When they open the add they will see "answer question" button which will allow them to insert the details. It views quite nicely on a separate card next to the bicycle which makes it useful for both sellers and buyers. I like that the reviews have worked out. They calculate rating as well as give access to all users reviewed and reviewing. 

Mailgun has been implemented for contact form as well as for messaging owners when they receive new question about their add. 

Shrine payments are being processed upon check out and a bicycle delivery address is being shown. 

Devise and Pundit secures access to data.

At this stage, payment is is the end of the user journey unless they would like to post a bicycle or buy another bicycle. In real world, the application requires the following: 

* wishlist 
* multiple photos of bicycles 
* assigning different addresses to bicycles - each user can have many addresses save and when they upload a bicycle they can assign any of them to the the bicycle , which later on becomes a delivery address or pick up address (accordingly)
* pick up or delivery option upon checkout ? aautomatic shipment costs calculation
* if pick up is selected the app can calculate the distance and will offer help with getting directions
* Payments - the idea is that they won't be processed at the time. Instead of buying the bicycle you are booking an inspection. Inspeciton time will be available and they will be set by the seller. 
* public inspections so someone else can inspect the bicycle at the same time - if one person books an inspection - if they decide to purchase the bicycle they will pay using the app in real time. No need for cash which is a security concern. 
* better pundit logic - at the moment there is a mix of pundit policies and various methods making sure that the correct and accurate data is rendered in front of the user - this has to be gone over and improved to make it clearer and easier. 
* tests
