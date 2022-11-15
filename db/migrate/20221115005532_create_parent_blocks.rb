class CreateParentBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :parent_blocks do |t|
      t.references :team, null: false, index: true
      t.references :child_block, null: false, index: true

      t.timestamps
    end
    add_foreign_key :parent_blocks, :teams, column: :team_id, on_delete: :cascade, on_update: :cascade, name: :fk_parent_blocks_on_team_id
    add_foreign_key :parent_blocks, :child_blocks, column: :child_block_id, on_delete: :cascade, on_update: :cascade, name: :fk_parent_blocks_on_child_block_id
  end
end
