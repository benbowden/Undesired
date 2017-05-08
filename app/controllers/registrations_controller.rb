class RegistrationsController <  Devise::RegistrationsController
	def new
		@emailFromParams = params[:email] 
		super
	end
			
	
end
