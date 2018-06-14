require 'test_helper'

class PresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pre = pres(:one)
  end

  test "should get index" do
    get pres_url
    assert_response :success
  end

  test "should get new" do
    get new_pre_url
    assert_response :success
  end

  test "should create pre" do
    assert_difference('Pre.count') do
      post pres_url, params: { pre: { correo: @pre.correo, nombre: @pre.nombre } }
    end

    assert_redirected_to pre_url(Pre.last)
  end

  test "should show pre" do
    get pre_url(@pre)
    assert_response :success
  end

  test "should get edit" do
    get edit_pre_url(@pre)
    assert_response :success
  end

  test "should update pre" do
    patch pre_url(@pre), params: { pre: { correo: @pre.correo, nombre: @pre.nombre } }
    assert_redirected_to pre_url(@pre)
  end

  test "should destroy pre" do
    assert_difference('Pre.count', -1) do
      delete pre_url(@pre)
    end

    assert_redirected_to pres_url
  end
end
