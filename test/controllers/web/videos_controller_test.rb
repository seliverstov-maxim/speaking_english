require 'test_helper'

class Web::VideosControllerTest < ActionController::TestCase
  setup do
    @video = create :video
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @video
    assert_response :success
  end
end
