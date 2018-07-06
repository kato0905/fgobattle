class AddAtkToServants < ActiveRecord::Migration[5.1]
  def change
    add_column :servants, :Atk, :integer
  end
end
