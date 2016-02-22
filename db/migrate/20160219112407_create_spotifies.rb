class CreateSpotifies < ActiveRecord::Migration
  def change
    create_table :spotifies do |t|
      t.belongs_to :band, index:true
      t.integer :popularity
      

      t.timestamps null: false
    end
  end
end
