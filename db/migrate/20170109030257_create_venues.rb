class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :place
      t.integer :food_id
      t.integer :cuisine_id
      t.string :location

      t.timestamps

    end
  end
end
