class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.float :price
      t.float :average_rating
      t.attachment :picture

      t.timestamps
    end
  end
end
