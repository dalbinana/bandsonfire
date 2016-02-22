class CreateYoutubes < ActiveRecord::Migration
  def change
    create_table :youtubes do |t|
      t.belongs_to :band, index:true
      t.integer :views
      

      t.timestamps null: false
    end
  end
end
