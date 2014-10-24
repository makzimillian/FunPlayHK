class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :category
      t.string :location
      t.string :comments
      t.integer :rating

      t.timestamps
    end
  end
end
