class AddFullyPurchasedToCrops < ActiveRecord::Migration[5.0]
  def change
    add_column :crops, :b_fully_purchased, :boolean, :default => false
  end
end
