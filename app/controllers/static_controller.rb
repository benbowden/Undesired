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
    @cropsAll = Crop.where("b_fully_purchased = ?", false).order("id DESC")

    #farmer
    @cropsActiveFarmer = current_user.crops.where("b_fully_purchased = ?", false).order("id DESC")
    @cropsPurchased = current_user.crops.where("b_fully_purchased = ?", true).where("b_delivered IS ? OR b_delivered=?", nil, false)
    @cropsDelivered = current_user.crops.where("b_delivered = ?", true)


    #calc 
    @cropsThatNeedToBeDelivered = current_user.crops.where("b_fully_purchased = ?", true). where("b_delivered IS ? OR b_delivered=?", nil, false).count
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


    #######
    #image to show
    ######
    



  end


  def orders
    @cropsOrdered = Crop.where("purchaser_id = ?", current_user.id).order("id DESC") 
  end

  private 
 
 	def check_signed_in
  	redirect_to static_dashboard_path if signed_in?
	end

end
