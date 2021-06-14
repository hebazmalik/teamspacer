class CreateSpaceReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :space_reviews do |t|
      t.string :content
      t.references :space, null: false, foreign_key: true
      t.integer :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
