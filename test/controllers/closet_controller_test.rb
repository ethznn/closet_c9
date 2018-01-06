require 'test_helper'

class ClosetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get closet_index_url
    assert_response :success
  end

end
