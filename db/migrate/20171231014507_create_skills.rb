class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.integer :servant_id
      t.string :name
      t.string :explain
      t.integer :d_pattern
      t.string :detail

      t.timestamps
    end
  end
end
