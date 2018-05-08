class Bicycle < ApplicationRecord
  belongs_to :user
  has_many :photos 
  has_many :queries

  def self.search(search)
    where("LOWER(title) LIKE ? OR LOWER(description) LIKE ? OR LOWER(brand) LIKE ? ", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%" )
  end
end
