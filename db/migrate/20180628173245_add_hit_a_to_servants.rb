class AddHitAToServants < ActiveRecord::Migration[5.1]
  def change
    add_column :servants, :HitA, :integer
  end
end
