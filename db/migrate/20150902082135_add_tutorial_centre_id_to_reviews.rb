class AddTutorialCentreIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :tutorial_centre_id, :integer
  end
end
