require "test_helper"

class BillableControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get billable_index_url
    assert_response :success
  end

  test "should get show" do
    get billable_show_url
    assert_response :success
  end

  test "should get create" do
    get billable_create_url
    assert_response :success
  end

  test "should get new" do
    get billable_new_url
    assert_response :success
  end
end
