require "test_helper"

class KontaktsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kontakts_index_url
    assert_response :success
  end
end
