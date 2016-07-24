require 'test_helper'

class ConsultControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get consult_register_url
    assert_response :success
  end

end
