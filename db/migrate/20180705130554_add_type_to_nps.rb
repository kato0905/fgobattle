class AddTypeToNps < ActiveRecord::Migration[5.1]
  def change
    add_column :nps, :Type, :integer
  end
end
