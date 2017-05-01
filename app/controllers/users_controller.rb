class UsersController < ApplicationController
  def show

  	@user = User.find(params[:id])
  	@recentCrops = @user.crops.all 

  end
end
