require 'test_helper'

class SclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sclass = sclasses(:one)
  end

  test "should get index" do
    get sclasses_url
    assert_response :success
  end

  test "should get new" do
    get new_sclass_url
    assert_response :success
  end

  test "should create sclass" do
    assert_difference('Sclass.count') do
      post sclasses_url, params: { sclass: { class_id: @sclass.class_id, name: @sclass.name } }
    end

    assert_redirected_to sclass_url(Sclass.last)
  end

  test "should show sclass" do
    get sclass_url(@sclass)
    assert_response :success
  end

  test "should get edit" do
    get edit_sclass_url(@sclass)
    assert_response :success
  end

  test "should update sclass" do
    patch sclass_url(@sclass), params: { sclass: { class_id: @sclass.class_id, name: @sclass.name } }
    assert_redirected_to sclass_url(@sclass)
  end

  test "should destroy sclass" do
    assert_difference('Sclass.count', -1) do
      delete sclass_url(@sclass)
    end

    assert_redirected_to sclasses_url
  end
end
