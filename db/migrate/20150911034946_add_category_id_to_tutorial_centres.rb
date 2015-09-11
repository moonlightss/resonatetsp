class AddCategoryIdToTutorialCentres < ActiveRecord::Migration
  def change
    add_column :tutorial_centres, :category_id, :integer
  end
end
