class Gossip < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :link_tag_gossips
  has_many :tags, through: :link_tag_gossips
  has_many :likes, as: :content
end
