class CreateNps < ActiveRecord::Migration[5.1]
  def change
    create_table :nps do |t|
      t.integer :servant_id
      t.string :name
      t.string :rank
      t.string :nptype
      t.string :command
      t.string :explain1
      t.string :data11
      t.string :data12
      t.string :data13
      t.string :data14
      t.string :data15
      t.string :explain2
      t.string :data21
      t.string :data22
      t.string :data23
      t.string :data24
      t.string :data25
      t.string :explain3
      t.string :data3
      t.timestamps
    end
  end
end
