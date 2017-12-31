require 'test_helper'

class NpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @np = nps(:one)
  end

  test "should get index" do
    get nps_url
    assert_response :success
  end

  test "should get new" do
    get new_np_url
    assert_response :success
  end

  test "should create np" do
    assert_difference('Np.count') do
      post nps_url, params: { np: { d_pattern: @np.d_pattern, detail: @np.detail, explain: @np.explain, name: @np.name, servant_id: @np.servant_id } }
    end

    assert_redirected_to np_url(Np.last)
  end

  test "should show np" do
    get np_url(@np)
    assert_response :success
  end

  test "should get edit" do
    get edit_np_url(@np)
    assert_response :success
  end

  test "should update np" do
    patch np_url(@np), params: { np: { d_pattern: @np.d_pattern, detail: @np.detail, explain: @np.explain, name: @np.name, servant_id: @np.servant_id } }
    assert_redirected_to np_url(@np)
  end

  test "should destroy np" do
    assert_difference('Np.count', -1) do
      delete np_url(@np)
    end

    assert_redirected_to nps_url
  end
end
