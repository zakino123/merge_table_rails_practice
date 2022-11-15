class DropChildBlock < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :parent_blocks, :child_blocks, column: :child_block_id, on_delete: :cascade, on_update: :cascade, name: :fk_parent_blocks_on_child_block_id
    remove_foreign_key :child_blocks, :teams, column: :team_id, on_delete: :cascade, on_update: :cascade, name: :fk_child_blocks_on_team_id
    drop_table :child_blocks do |t|
      t.references :team, null: false, index: true
      t.string :body, null: false

      t.timestamps
    end
  end
end
