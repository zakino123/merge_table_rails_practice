class DataMigrationChildBlockBody < ActiveRecord::Migration[6.1]
  def change
    ParentBlock.includes(:child_block).each do |parent_block|
      parent_block.update(child_block_body: parent_block.child_block.body)
    end
  end
end
