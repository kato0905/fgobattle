class AddHitNpToServants < ActiveRecord::Migration[5.1]
  def change
    add_column :servants, :HitNP, :integer
  end
end
