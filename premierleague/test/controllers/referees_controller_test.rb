require 'test_helper'

class RefereesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get referees_index_url
    assert_response :success
  end

  test "should get show" do
    get referees_show_url
    assert_response :success
  end

  test "should get new" do
    get referees_new_url
    assert_response :success
  end

  test "should get edit" do
    get referees_edit_url
    assert_response :success
  end

end
