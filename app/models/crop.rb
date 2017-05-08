class Crop < ApplicationRecord
	belongs_to :user 

	 def total


	 	if(self.amount != nil && self.cost != nil)
    	return self.amount * self.cost
    else
    	return 0
    end
  end
end
