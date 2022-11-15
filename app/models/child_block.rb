class ChildBlock < ApplicationRecord
  belongs_to :team
  has_many :parent_blocks
end
