class User < ApplicationRecord
  has_secure_password
  belongs_to :city, optional: true
  has_many :likes
  has_many :gossips
  has_many :comments
end
