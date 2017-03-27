class AddCropIdToCrops < ActiveRecord::Migration[5.0]
  def change
  	add_reference :crops, :user, index: true

  end
end
