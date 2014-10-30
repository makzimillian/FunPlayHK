class AddActivitiesToCategory < ActiveRecord::Migration
  def change
    change_table :activities do |t|
      t.belongs_to :category
    end
  end
end
