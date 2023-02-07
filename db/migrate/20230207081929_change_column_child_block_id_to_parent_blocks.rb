class ChangeColumnChildBlockIdToParentBlocks < ActiveRecord::Migration[6.1]
  def up
    change_column :parent_blocks, :child_block_id, :bigint, null: true
  end

  def down
    change_column :parent_blocks, :child_block_id, :bigint, null: false
  end
end
