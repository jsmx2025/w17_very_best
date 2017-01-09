class CreateVerybests < ActiveRecord::Migration
  def change
    create_table :verybests do |t|
      t.integer :user_id
      t.integer :foodvenue_id

      t.timestamps

    end
  end
end
