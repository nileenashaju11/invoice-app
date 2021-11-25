class Api::V1::ProjectsController < Api::V1::ApiController
	skip_before_action :verify_authenticity_token

   respond_to :json
   def index
     @projects = Project.all
   		render json: @projects
   end

   def create
	   @project = Project.new(project_params)
	   if @project.save
	    render json: @project, status: :created, location:        api_v1_project_url(@project)
	   else
	    render json: @project.errors, status: :unprocessable_entity
	   end
	end
   def show
		projects = Project.find_by_id(params[:id])
		if projects.present?
			render json: {
        messages: "Your product details are here.",
        is_success: true,
        data:  projects
      }, status: :ok
		else
			render json: {
        messages: "Product doesn't exist.",
        is_success: false,
        data: {}
      }, status: :unprocessable_entity
		end
	end

	def update
		projects = Project.find_by_id(params[:id])
		if projects.update(project_params)
			render json: {
        messages: "Project Updated Successfully",
        is_success: true,
        data: {user: projects}
      }, status: :ok
		else
			render json: {
        messages: "Please check the given project details.",
        is_success: false,
        data: {}
      }, status: :unprocessable_entity
		end
	end

	def destroy
		projects = Project.find_by_id(params[:id])
		if projects.destroy
			render json: {
        messages: "Project Deleted Successfully",
        is_success: true,
      }, status: :ok
		else
			render json: {
        messages: "Unable to delete selected project",
        is_success: false,
      }, status: :unprocessable_entity
		end
	end

	private
	  def project_params
	      params.permit(:project_name, :client_name, :developer, :start_date, :working_hours, :project_status, :payment_date, :invoice_status)
	  end
end
