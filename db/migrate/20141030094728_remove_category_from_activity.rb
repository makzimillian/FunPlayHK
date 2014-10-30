class RemoveCategoryFromActivity < ActiveRecord::Migration
  def change
    remove_column :activities, :category
  end
end
