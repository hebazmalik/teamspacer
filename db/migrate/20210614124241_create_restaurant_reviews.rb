class CreateRestaurantReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_reviews do |t|
      t.integer :rating
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
