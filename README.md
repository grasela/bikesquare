# bikesquare.com.au 

[https://bikeSquare.com.au](https://bikesquare.com.au)
# List of contents 
1. Problem 
2. Solution
3. Trello Board
4. User Stories
5. ERD (Entetity Relationship Diagram)
6. Models
7. Controller
8. Mood Board/ Inspiration
9. Wireframes 
10. Features
11. Ruby Gems
12. Challenges 
13. Coding 
14. Final Product 


## 1. Problem 
In March 2017, bicycles in Melbourne made up 16 per cent of all vehicle movements into the city in the morning peak period (between 7am and 10am). In March 2008 the figure was nine per cent. Just to put it in perspective Royal Parade takes 3654 cars in the morning on the inbounde route to the city, while at the same time there are 1779 bicycles used for a daily commute. The population of Melbourne has grown from 3.85 million in 2011 to 4.82 million in 2017. That means on average we have gained 160 000 cyclists only in 6 years. 	3.6 million (17% of) people ride a bike in Australia each week and 7.4 million (37%) had ridden at least once in the previous year.5.1% of Australians are commuter cyclists – i.e. had ridden for transport purposes over the previous week, compared with 14.1% for recreation or exercise, mostly children. Plenty of Australians are in need of a bicycle and buying a brand new bicycle can be expensive and a lot of people my not be able to commit to a high cost of the investement.
Currently if one is on a look for a second hand bicycle, they will struggle filtering through hundreds of offerings on gumtree that lack consistency (particurarly if it comes to bicycle size or location).Searching Facebook Marketplace is even harder as most additional specific information has to be confirmed directly with the seller over Messanger. Speaking to a few marketplace users, they have confirmed that having have to exchange direct messages can be quite time consuming. There is a definate need for clearly published information that will allow the buyer to make their decision. 
## 2. Solution

Cycling is a lot more often a viable altrenative to our jammed raods and second hand bikes become a great option for entry cyclists and even everyday commuters. If you are searching for second hand bike you are forced to monitor not only Gumtree (which has offering of every other item you can imagine apart from bicycles) but also facebook marketplace which allows for quick postings. I have noticed an increase in demand for closed groups as bicycle resource (e.g. Buy/Sell road cycling Victoria ). Second Hand Bicycle Market consolidates used bicycle postings but also implements features to improve communication and make selling and buying second hand bicycles more time and cost effective. It doesn't accept real/official bicycles shop to post their offerings in order to maintain the community-orientated character of the space. The platform offers secure payment method which can be done in real time during the bicycle inspection. This is a proposed solution to having have to carry different amount of cash for various bicycle inspections. Every bicycle has a separate Q & A board which will save the seller a lot of time on answering one question only once as well as will keep information transparent for the buyers/viewers. The board will automatically support the posting/add itself. 

### Current painpoints: 

*Painpoint 1: sellers have to respond to multiple messages. Plenty of them are referring to the same aspect. 
*Response: Ad board allows other users read answers to previously asked questions. 

*Painpoint 2: users of Facebook Marketplace or Gumtree have to bring cash to every inspection, just in case they decide to buy the item. 
*Response: Purchases can be done only via secure online payment system pending satisfactory inspection . The seller receives instant notification for the fund to have cleared and the buyer can come home with the bicycle 

*Painpoint 3: BikeExchange and even Gumtree accepts offerings from official shops. These adds create unneecessary noise in the ads speace which makes it difficult to filter through
*Response: Bicycle Marketplace accepts offers only for second hand pre owned bicles



## 3. Trello Board
[bikeSquare Trello](https://trello.com/b/CI3vl2gr/bikesquare)
## 4. User Stories

## 5. ERD (Entetity Relationship Diagram)
![bikeSquare ERD ](/app/assets/images/dbdesigner.png "bikeSquare ERD")


## 8. Mood Board/ Inspiration
[Moodboard/Inspiration](https://www.pinterest.com.au/erykgrasela/bikesquare/)
## 9. Wireframes 
[Wireframes](https://www.figma.com/file/Zbx8HqptQkWiph6bHu5ufR9S/BikesSquare)
![bikeSquare Wireframes](/app/assets/images/wireframes.png)
##10. Features
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
* aws-sdk
## 12. Challenges 
How to create 2 foreign keys for reviews relating to the same table user , creating reviewer and reviewed user 

adding radio inputs to bicycle form which allows for selecting already saved user address or adding a new address 
## 13. Coding 
## 14. Final Product 
