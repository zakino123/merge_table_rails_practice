class RemoveForeignKeyParentBlockToChildBlocks < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :parent_blocks, :child_blocks, column: :child_block_id, on_delete: :cascade, on_update: :cascade, name: :fk_parent_blocks_on_child_block_id
  end
end
