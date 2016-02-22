class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
    	t.belongs_to :user, index:true
      t.string :name
      t.string :spotifyID
      t.string :picture

      t.timestamps null: false
    end
  end
end
