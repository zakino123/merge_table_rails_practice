class Team < ApplicationRecord
  has_many :parent_blocks
  has_many :child_blocks
end
