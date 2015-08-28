class AddImageToTutorialCentres < ActiveRecord::Migration
  def change
    add_column :tutorial_centres, :image, :string
  end
end
