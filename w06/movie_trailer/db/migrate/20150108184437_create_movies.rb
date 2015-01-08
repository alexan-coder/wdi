class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :poster_url
      t.boolean :released

      t.timestamps
    end
  end
end
