class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating, null: false
      t.text :body, null: false
      t.integer :restaurant_id, null: false
      t.timestamps
    end
  end
end
