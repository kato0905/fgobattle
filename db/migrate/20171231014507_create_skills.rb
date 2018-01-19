class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.integer :servant_id
      t.string :name
      t.integer :ct
      t.string :explain
      t.string :d1
      t.string :d2
      t.string :d3
      t.string :d4
      t.string :d5
      t.string :d6
      t.string :d7
      t.string :d8
      t.string :d9
      t.string :d10

      t.timestamps
    end
  end
end
