class StaticController < ApplicationController
	before_action :check_signed_in, only: [:index]

  def index
  	
  end

  def dashboard

  end

  private 
 
 	def check_signed_in
  	redirect_to static_dashboard_path if signed_in?
	end
end
