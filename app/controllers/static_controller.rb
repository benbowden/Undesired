class StaticController < ApplicationController
	before_action :check_signed_in, only: [:index]

  def index
  	
  end

  def dashboard

    #setup
  	@b_isFarmer = current_user.isFarmer
  	@userTest = current_user
    @user = current_user

    #donator
    @cropsAll = Crop.where("b_fully_purchased != ?", false)

    #farmer
    @cropsFarmer = @cropsAll.where("id = ?", current_user )


    #calc 
    @cropsThatNeedToBeDelivered = current_user.crops.where("b_fully_purchased = ?", true). where("b_delivered != ?", true).count
    @cropsDelivered = current_user.crops.where("b_delivered = ?", true)
    @cropsDeliveredCount = @cropsDelivered.count
    
    #calc total
    @totalBalance = 0
    @cropsDelivered.each do |f|
      @totalBalance += f.total

    end

    

    if(@cropsThatNeedToBeDelivered.nil?)
      @cropsThatNeedToBeDelivered = 0
    end

    if (@cropsDelivered.nil?)
      @cropsShippedCount = 0
    end



  end


  def orders
    @cropsOrdered = Crop.where("purchaser_id = ?", current_user.id) 
  end

  private 
 
 	def check_signed_in
  	redirect_to static_dashboard_path if signed_in?
	end

end
