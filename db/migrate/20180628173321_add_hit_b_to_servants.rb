class AddHitBToServants < ActiveRecord::Migration[5.1]
  def change
    add_column :servants, :HitB, :integer
  end
end
