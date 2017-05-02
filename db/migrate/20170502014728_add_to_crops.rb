class AddToCrops < ActiveRecord::Migration[5.0]
  def change
  		add_column :crops, :purchaser_id, :integer 
  		add_column :crops, :b_delivered, :boolean
  end
end
