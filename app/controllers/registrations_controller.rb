class RegistrationsController < ApplicationController
  def after_sign_up_path_for
  	"http://www.google.com"
  	
  end

  def after_sign_in_path_for
  	"http://www.tubefilter.com"
  end
end
