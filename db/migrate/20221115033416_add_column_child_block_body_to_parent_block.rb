class AddColumnChildBlockBodyToParentBlock < ActiveRecord::Migration[6.1]
  def change
    add_column :parent_blocks, :child_block_body, :string, null: false, after: :child_block_id

    ParentBlock.includes(:child_block).each do |parent_block|
      parent_block.update(child_block_body: parent_block.child_block.body)
    end
  end
end
