class RegistrationsController <  Devise::RegistrationsController
	def new
		@emailFromParams = params[:email] 
		super
	end

	def sign_up_params
    params.require(:user).permit(:farmer_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:farmer_name, :email, :password, :password_confirmation, :current_password)
  end
			
	
end
