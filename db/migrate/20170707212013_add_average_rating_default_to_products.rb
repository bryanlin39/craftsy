class AddAverageRatingDefaultToProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column(:products, :average_rating)

    add_column(:products, :average_rating, :float, :default => 0)
  end
end
