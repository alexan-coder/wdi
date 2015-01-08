class AddLocationToFridges < ActiveRecord::Migration
  def change
  	add_column :fridges, :location, :string
  end
end
