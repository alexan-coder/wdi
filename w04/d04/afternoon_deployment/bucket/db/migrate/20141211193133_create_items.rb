class CreateItems < ActiveRecord::Migration
  def change
  	create_table :items do |t|
  		t.string :title
  		t.text :desc
  		t.boolean :is_done
  		t.timestamps
  	end
  end
end
