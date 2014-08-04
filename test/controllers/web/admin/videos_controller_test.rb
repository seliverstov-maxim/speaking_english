require 'test_helper'

class Web::Admin::VideosControllerTest < ActionController::TestCase
  setup do
    @video = create :video
    @attrs = attributes_for :video
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video
    assert_response :success
  end

  test "should create video" do
    post :create, video: @attrs
    assert_redirected_to :admin_videos

    video = Video.find_by(title: @attrs[:title])
    assert { video }
  end

  test "should update video" do
    put :update, id: @video, video: @attrs
    assert_redirected_to :admin_videos

    @video.reload
    assert { @video.title == @attrs[:title] }
  end

  test "should destroy video" do
    delete :destroy, id: @video
    assert_redirected_to :admin_videos

    @video.reload
    assert { @video.deleted? }
  end
end
