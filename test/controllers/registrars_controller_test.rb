require 'test_helper'

class RegistrarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registrar = registrars(:one)
  end

  test "should get index" do
    get registrars_url
    assert_response :success
  end

  test "should get new" do
    get new_registrar_url
    assert_response :success
  end

  test "should create registrar" do
    assert_difference('Registrar.count') do
      post registrars_url, params: { registrar: { adultez: @registrar.adultez, carrera: @registrar.carrera, cartel: @registrar.cartel, ciudad: @registrar.ciudad, como: @registrar.como, construccion: @registrar.construccion, correo: @registrar.correo, delser: @registrar.delser, desigualdad: @registrar.desigualdad, direccion: @registrar.direccion, fullname: @registrar.fullname, futuro: @registrar.futuro, institucion: @registrar.institucion, newmun: @registrar.newmun, pais: @registrar.pais, postal: @registrar.postal, quien: @registrar.quien, sustenta: @registrar.sustenta, telefono: @registrar.telefono, titulo: @registrar.titulo, vende: @registrar.vende } }
    end

    assert_redirected_to registrar_url(Registrar.last)
  end

  test "should show registrar" do
    get registrar_url(@registrar)
    assert_response :success
  end

  test "should get edit" do
    get edit_registrar_url(@registrar)
    assert_response :success
  end

  test "should update registrar" do
    patch registrar_url(@registrar), params: { registrar: { adultez: @registrar.adultez, carrera: @registrar.carrera, cartel: @registrar.cartel, ciudad: @registrar.ciudad, como: @registrar.como, construccion: @registrar.construccion, correo: @registrar.correo, delser: @registrar.delser, desigualdad: @registrar.desigualdad, direccion: @registrar.direccion, fullname: @registrar.fullname, futuro: @registrar.futuro, institucion: @registrar.institucion, newmun: @registrar.newmun, pais: @registrar.pais, postal: @registrar.postal, quien: @registrar.quien, sustenta: @registrar.sustenta, telefono: @registrar.telefono, titulo: @registrar.titulo, vende: @registrar.vende } }
    assert_redirected_to registrar_url(@registrar)
  end

  test "should destroy registrar" do
    assert_difference('Registrar.count', -1) do
      delete registrar_url(@registrar)
    end

    assert_redirected_to registrars_url
  end
end
