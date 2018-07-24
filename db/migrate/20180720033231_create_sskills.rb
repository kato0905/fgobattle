class CreateSskills < ActiveRecord::Migration[5.1]
  def change
    create_table :sskills do |t|
      t.integer :skill_id
      t.integer :target
      t.string :effect
      t.integer :turn
      t.integer :count
      t.integer :mag

      t.timestamps
    end
  end
end
