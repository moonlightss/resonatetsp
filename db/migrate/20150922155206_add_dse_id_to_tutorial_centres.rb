class AddDseIdToTutorialCentres < ActiveRecord::Migration
  def change
    add_column :tutorial_centres, :dse_id, :integer
  end
end
