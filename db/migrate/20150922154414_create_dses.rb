class CreateDses < ActiveRecord::Migration
  def change
    create_table :dses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
