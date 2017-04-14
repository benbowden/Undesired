class ReferenceCropsPurchasedToCrops < ActiveRecord::Migration[5.0]
  def change
  	add_reference :crops_purchased, :crops, index: true
  end
end
