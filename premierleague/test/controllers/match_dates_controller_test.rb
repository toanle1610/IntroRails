require 'test_helper'

class MatchDatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get match_dates_index_url
    assert_response :success
  end

  test "should get show" do
    get match_dates_show_url
    assert_response :success
  end

  test "should get new" do
    get match_dates_new_url
    assert_response :success
  end

  test "should get edit" do
    get match_dates_edit_url
    assert_response :success
  end

end
