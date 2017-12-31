class CreateSclasses < ActiveRecord::Migration[5.1]
  def change
    create_table :sclasses do |t|
      t.integer :class_id
      t.string :name

      t.timestamps
    end
  end
end
