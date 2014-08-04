require 'test_helper'

class Web::Admin::SubtitlesControllerTest < ActionController::TestCase
  setup do
    @subtitle = create :subtitle
    @attrs = attributes_for :subtitle
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
    get :edit, id: @subtitle
    assert_response :success
  end

  test "should create subtitle" do
    post :create, subtitle: @attrs
    assert_redirected_to :admin_subtitles

    subtitle = Subtitle.find_by(source: @attrs[:source])
    assert { subtitle }
  end

  test "should update subtitle" do
    put :update, id: @subtitle, subtitle: @attrs
    assert_redirected_to :admin_subtitles

    @subtitle.reload
    assert { @subtitle.source == @attrs[:source] }
  end

  test "should destroy subtitle" do
    delete :destroy, id: @subtitle
    assert_redirected_to :admin_subtitles

    @subtitle.reload
    assert { @subtitle.deleted? }
  end
end
