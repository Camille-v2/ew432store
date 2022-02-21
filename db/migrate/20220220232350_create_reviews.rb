class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.text :body
      t.references :product, null: false, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
