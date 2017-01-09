class CreateFoodvenues < ActiveRecord::Migration
  def change
    create_table :foodvenues do |t|
      t.integer :food_id
      t.integer :venue_id

      t.timestamps

    end
  end
end
