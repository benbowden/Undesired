class AddDestinationAndSoldBy < ActiveRecord::Migration[5.0]
  def change
  	add_column :crops, :destination, :string, :default => "Second Harvest"
  	add_column :crops, :state, :string, :default => "NC"
  end
end
