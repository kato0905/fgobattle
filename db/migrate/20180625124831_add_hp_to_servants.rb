class AddHpToServants < ActiveRecord::Migration[5.1]
  def change
    add_column :servants, :Hp, :integer
  end
end
