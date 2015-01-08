class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :title
      t.string :embed_code
      t.references :movie, index: true

      t.timestamps
    end
  end
end
