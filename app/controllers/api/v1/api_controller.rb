class Api::V1::ApiController < ActionController::Base
	#before_action :authenticate_user!
	respond_to :json

	# def render_resource(resource)
	# 	byebug
	# 	if resource.errors.empty?
	# 		render json: resource
	# 	else
	# 		validation_error(resource)
	# 	end
	# end

	# def validation_error(resource)
	# 	render json: {
	# 		errors: [
	# 			{
	# 				status: '400',
	# 				title: 'Bad Request',
	# 				detail: resource.errors,
	# 				code: '100'
	# 			}
	# 		]
	# 	}, status: :bad_request
	# end
end
