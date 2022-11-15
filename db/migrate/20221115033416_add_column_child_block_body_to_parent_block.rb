class AddColumnChildBlockBodyToParentBlock < ActiveRecord::Migration[6.1]
  def change
    add_column :parent_blocks, :child_block_body, :string, null: false, after: :child_block_id
  end
end
