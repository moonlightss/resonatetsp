class CreateTutorialCentres < ActiveRecord::Migration
  def change
    create_table :tutorial_centres do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website

      t.timestamps null: false
    end
  end
end
