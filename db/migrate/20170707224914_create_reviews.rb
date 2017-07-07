class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :content
      t.integer :rating

      t.timestamps
    end
  end
end
