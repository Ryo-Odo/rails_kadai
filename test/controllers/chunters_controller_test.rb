require 'test_helper'

class ChuntersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chunters_index_url
    assert_response :success
  end

end
