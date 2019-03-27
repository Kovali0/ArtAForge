require 'test_helper'

class ArtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get arts_index_url
    assert_response :success
  end

end
