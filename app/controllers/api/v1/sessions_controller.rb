class Api::V1::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token		
  respond_to :json

  def create
  	@user = User.find_by_email(params[:user][:email])
  	if  @user.valid_password?(params[:user][:password])
  		render json: { status: 200, email: @user.email, message: "You are successfully signed in." }
  	else
  		render json: { error: 'unauthorized' }, status: :unauthorized	
  	end	
  end		

  def destroy
  end

  private

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end

end
