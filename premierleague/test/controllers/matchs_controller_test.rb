require 'test_helper'

class MatchsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get matchs_index_url
    assert_response :success
  end

  test "should get show" do
    get matchs_show_url
    assert_response :success
  end

  test "should get new" do
    get matchs_new_url
    assert_response :success
  end

  test "should get edit" do
    get matchs_edit_url
    assert_response :success
  end

end
