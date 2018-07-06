class AddAtkToNps < ActiveRecord::Migration[5.1]
  def change
    add_column :nps, :Atk, :integer
  end
end
