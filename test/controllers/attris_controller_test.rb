require 'test_helper'

class AttrisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attri = attris(:one)
  end

  test "should get index" do
    get attris_url
    assert_response :success
  end

  test "should get new" do
    get new_attri_url
    assert_response :success
  end

  test "should create attri" do
    assert_difference('Attri.count') do
      post attris_url, params: { attri: { attri_id: @attri.attri_id, name: @attri.name } }
    end

    assert_redirected_to attri_url(Attri.last)
  end

  test "should show attri" do
    get attri_url(@attri)
    assert_response :success
  end

  test "should get edit" do
    get edit_attri_url(@attri)
    assert_response :success
  end

  test "should update attri" do
    patch attri_url(@attri), params: { attri: { attri_id: @attri.attri_id, name: @attri.name } }
    assert_redirected_to attri_url(@attri)
  end

  test "should destroy attri" do
    assert_difference('Attri.count', -1) do
      delete attri_url(@attri)
    end

    assert_redirected_to attris_url
  end
end
