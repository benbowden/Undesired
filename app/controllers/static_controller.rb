class StaticController < ApplicationController
	before_action :check_signed_in, only: [:index]

  def index
  	
  end

  def dashboard
  	@b_isFarmer = current_user.isFarmer
  	@userTest = current_user
    @user = current_user

    @cropsFarmer = current_user.crops.all 
    @cropsAll = Crop.where("b_fully_purchased = ?", false) 
  end


  def orders
    @cropsOrdered = Crop.where("purchaser_id = ?", current_user.id) 
  end

  private 
 
 	def check_signed_in
  	redirect_to static_dashboard_path if signed_in?
	end

end
