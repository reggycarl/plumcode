class ApplicationController < ActionController::Base
 # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # before_action :store_user_location!, if: :storable_location?
  # protect_from_forgery with: :exception
# 
# 
# 
  # add_flash_types :success, :warning, :danger, :info
  # before_filter :configure_permitted_parameters, if: :devise_controller?
# 
  # protected
#   
   # def storable_location?
      # request.get? && is_navigational_format? && !devise_controller? && !request.xhr?  
    # end
# 
    # def store_user_location!
      # # :user is the scope we are authenticating
      # store_location_for(:user, request.fullpath)
    # end
#     
# 
  # def configure_permitted_parameters
#    
     # devise_parameter_sanitizer.permit(:sign_up, keys: [ :first_name, :last_name,:email, :mobile_number, :gender,:password, :password_confirmation])
     # devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
   # devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email,:mobile_number, :gender, :password, :password_confirmation])
  # end
# 
   # def after_sign_in_path_for(resource_or_scope)
  # stored_location_for(resource_or_scope) || super
# end
# 
  # def after_sign_up_path_for(resource_or_scope)
  # stored_location_for(resource_or_scope) || super
# end

end
