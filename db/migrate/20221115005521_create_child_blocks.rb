class CreateChildBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :child_blocks do |t|
      t.references :team, null: false, index: true
      t.string :body, null: false

      t.timestamps
    end
    add_foreign_key :child_blocks, :teams, column: :team_id, on_delete: :cascade, on_update: :cascade, name: :fk_child_blocks_on_team_id
  end
end
