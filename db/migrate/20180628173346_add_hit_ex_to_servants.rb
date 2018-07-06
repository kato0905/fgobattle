class AddHitExToServants < ActiveRecord::Migration[5.1]
  def change
    add_column :servants, :HitEX, :integer
  end
end
