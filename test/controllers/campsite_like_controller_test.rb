require "test_helper"

class CampsiteLikeControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get campsite_like_create_url
    assert_response :success
  end

  test "should get destroy" do
    get campsite_like_destroy_url
    assert_response :success
  end
end
