class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :category
      t.string :location
      t.float :latitude
      t.float :longitude
      t.string :description
      t.integer :rating
      t.string :url

      t.timestamps
    end
  end
end
