require "test_helper"

class PhotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get photes_index_url
    assert_response :success
  end

  test "should get show" do
    get photes_show_url
    assert_response :success
  end

  test "should get new" do
    get photes_new_url
    assert_response :success
  end

  test "should get edit" do
    get photes_edit_url
    assert_response :success
  end
end
