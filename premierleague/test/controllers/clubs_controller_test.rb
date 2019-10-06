require 'test_helper'

class ClubsControllerTest < ActionDispatch::IntegrationTest
  test "should get club" do
    get clubs_club_url
    assert_response :success
  end

end
