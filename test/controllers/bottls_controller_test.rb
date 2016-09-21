require 'test_helper'

class BottlsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bottls_index_url
    assert_response :success
  end

end
