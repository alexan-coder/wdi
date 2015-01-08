class AddBrandToFridges < ActiveRecord::Migration
  def change
  	add_column :fridges, :brand, :string
  end
end
