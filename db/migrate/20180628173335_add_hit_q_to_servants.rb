class AddHitQToServants < ActiveRecord::Migration[5.1]
  def change
    add_column :servants, :HitQ, :integer
  end
end
