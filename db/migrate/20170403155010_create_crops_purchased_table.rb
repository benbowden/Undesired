class CreateCropsPurchasedTable < ActiveRecord::Migration[5.0]
  def change
    create_table :crops_purchased do |t|
    	t.string   :name
    	t.integer :amount
      t.decimal :cost
 

    end
  end
end
