class Bicycle < ApplicationRecord
  belongs_to :user
  has_many :photos 
  has_many :queries
end
