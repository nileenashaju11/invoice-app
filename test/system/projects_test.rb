require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Client name", with: @project.client_name
    fill_in "Developer", with: @project.developer
    fill_in "Invoice status", with: @project.invoice_status
    fill_in "Payment date", with: @project.payment_date
    fill_in "Project name", with: @project.project_name
    fill_in "Project status", with: @project.project_status
    fill_in "Start date", with: @project.start_date
    fill_in "Working hours", with: @project.working_hours
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Client name", with: @project.client_name
    fill_in "Developer", with: @project.developer
    fill_in "Invoice status", with: @project.invoice_status
    fill_in "Payment date", with: @project.payment_date
    fill_in "Project name", with: @project.project_name
    fill_in "Project status", with: @project.project_status
    fill_in "Start date", with: @project.start_date
    fill_in "Working hours", with: @project.working_hours
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
