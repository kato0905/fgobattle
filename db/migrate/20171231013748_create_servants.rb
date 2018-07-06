class CreateServants < ActiveRecord::Migration[5.1]
  def change
    create_table :servants do |t|
      t.integer :servant_id
      t.integer :rare
      t.string :name
      t.integer :class_id
      t.integer :attri_id
      t.string :command
      t.integer :np_get
      t.integer :hp
      t.integer :atk

      t.timestamps
    end
  end
end
