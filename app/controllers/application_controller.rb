class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    # additional config for params in other views reference - devise docs
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nick])
      devise_parameter_sanitizer.permit(:account_update, keys: %i[nick password password_confirmation current_password])
    end
end