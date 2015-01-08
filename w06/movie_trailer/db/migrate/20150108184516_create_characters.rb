class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :photo_url
      t.references :movie, index: true

      t.timestamps
    end
  end
end
