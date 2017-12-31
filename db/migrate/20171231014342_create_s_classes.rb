class CreateSClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :s_classes do |t|
      t.integer :class_id
      t.string :name

      t.timestamps
    end
  end
end
