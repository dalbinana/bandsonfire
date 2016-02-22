require 'test_helper'

class BandControllerTest < ActionController::TestCase
  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get spotify_id:string" do
    get :spotify_id:string
    assert_response :success
  end

  test "should get picture:string" do
    get :picture:string
    assert_response :success
  end

end
