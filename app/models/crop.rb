class Crop < ApplicationRecord
	belongs_to :user 

	 def total
    self.amount * self.cost
  end
end
