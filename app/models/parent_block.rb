class ParentBlock < ApplicationRecord
  belongs_to :team
  belongs_to :child_block
end
