class Tag < ApplicationRecord
  has_many :link_tag_gossips
  has_many :gossips, through: :link_tag_gossips  
end
