class Profile < ApplicationRecord
  include ImageUploader::Attachment.new(:avatar) # adds an `avatar` virtual attribute
  belongs_to :user
  
end
