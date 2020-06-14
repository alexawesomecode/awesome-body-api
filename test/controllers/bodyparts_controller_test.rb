require 'test_helper'

class BodypartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bodypart = bodyparts(:one)
  end

  test "should get index" do
    get bodyparts_url, as: :json
    assert_response :success
  end

  test "should create bodypart" do
    assert_difference('Bodypart.count') do
      post bodyparts_url, params: { bodypart: { name: @bodypart.name, target: @bodypart.target } }, as: :json
    end

    assert_response 201
  end

  test "should show bodypart" do
    get bodypart_url(@bodypart), as: :json
    assert_response :success
  end

  test "should update bodypart" do
    patch bodypart_url(@bodypart), params: { bodypart: { name: @bodypart.name, target: @bodypart.target } }, as: :json
    assert_response 200
  end

  test "should destroy bodypart" do
    assert_difference('Bodypart.count', -1) do
      delete bodypart_url(@bodypart), as: :json
    end

    assert_response 204
  end
end
