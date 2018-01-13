class CreateNpgets < ActiveRecord::Migration[5.1]
  def change
    create_table :npgets do |t|
      t.integer :servant_id
      t.decimal :a1,precision: 6,scale: 2
      t.decimal :a2,precision: 6,scale: 2
      t.decimal :a2p,precision: 6,scale: 2
      t.decimal :a3,precision: 6,scale: 2
      t.decimal :a3p,precision: 6,scale: 2
      t.decimal :q1,precision: 6,scale: 2
      t.decimal :q2,precision: 6,scale: 2
      t.decimal :q2p,precision: 6,scale: 2
      t.decimal :q3,precision: 6,scale: 2
      t.decimal :q3p,precision: 6,scale: 2
      t.decimal :ex,precision: 6,scale: 2
      t.decimal :exp,precision: 6,scale: 2
      t.decimal :bp,precision: 6,scale: 2
      t.decimal :np,precision: 6,scale: 2

      t.timestamps
    end
  end
end
