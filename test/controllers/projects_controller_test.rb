require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { client_name: @project.client_name, developer: @project.developer, invoice_status: @project.invoice_status, payment_date: @project.payment_date, project_name: @project.project_name, project_status: @project.project_status, start_date: @project.start_date, working_hours: @project.working_hours } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { client_name: @project.client_name, developer: @project.developer, invoice_status: @project.invoice_status, payment_date: @project.payment_date, project_name: @project.project_name, project_status: @project.project_status, start_date: @project.start_date, working_hours: @project.working_hours } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
