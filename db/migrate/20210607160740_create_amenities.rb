class CreateAmenities < ActiveRecord::Migration[6.0]
  def change
    create_table :amenities do |t|
      t.references :space, null: false, foreign_key: true
      t.boolean :toilets
      t.boolean :pets
      t.boolean :tables
      t.boolean :parking
      t.boolean :sports_facility

      t.timestamps
    end
  end
end
