class CreateClassskills < ActiveRecord::Migration[5.1]
  def change
    create_table :classskills do |t|
      t.integer :servant_id
      t.string :name
      t.string :explain
      t.integer :icon_id

      t.timestamps
    end
  end
end
