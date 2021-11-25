class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	skip_before_action :verify_authenticity_token
	before_action :configure_permitted_parameters, if: :devise_controller?

	# def render_jsonapi_response(resource)
	#     if resource.errors.empty?
	#       render jsonapi: resource
	#     else
	#       render jsonapi_errors: resource.errors, status: 400
	#     end
	#   end
	
	protected

	def configure_permitted_parameters
	   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
	end
end
