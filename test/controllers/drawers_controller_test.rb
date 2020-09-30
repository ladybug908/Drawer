require 'test_helper'

class DrawersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drawers_index_url
    assert_response :success
  end

end
