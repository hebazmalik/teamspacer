class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :price
      t.string :cuisine
      t.time :opening_time
      t.time :closing_times
      t.float :longitude
      t.float :latitude
      t.references :area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
