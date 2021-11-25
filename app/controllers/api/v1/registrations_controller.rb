class Api::V1::RegistrationsController < Devise::RegistrationsController
	skip_before_action :verify_authenticity_token
  	respond_to :json

	def create
		byebug
		build_resource(sign_up_params)
		if resource.save
    		sign_up(resource_name, resource) if resource.persisted?
    		# render_jsonapi_response(resource)
    	else
    		render json: { errors: resource.errors, status: :unprocessable_entity }
    	end		
  	end

  	private

	  def sign_up_params	
	    params.require(:user).permit(:email, :password,
	                  :password_confirmation,:first_name, :last_name)
	  end
end