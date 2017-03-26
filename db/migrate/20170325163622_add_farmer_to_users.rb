class AddFarmerToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :isFarmer, :boolean
  end
end
