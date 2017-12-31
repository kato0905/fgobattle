class CreateAttris < ActiveRecord::Migration[5.1]
  def change
    create_table :attris do |t|
      t.integer :attri_id
      t.string :name

      t.timestamps
    end
  end
end
