class AddLinkImageForCrops < ActiveRecord::Migration[5.0]
  def change

  	add_column :crops, :link_to_crop_image, :string, :default => "http://gdurl.com/M8nY"
  end
end
