class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_one :profile 
  has_many :addresses 
  has_many :done_reviews,    class_name: "Review", foreign_key: "reviewer_id"
  has_many :received_reviews, class_name: "Review", foreign_key: "reviewed_user_id"
  has_many :reviews, class_name: "Review", foreign_key: "user_id"
  has_many :purchases
end
