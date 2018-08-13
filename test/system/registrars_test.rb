require "application_system_test_case"

class RegistrarsTest < ApplicationSystemTestCase
  setup do
    @registrar = registrars(:one)
  end

  test "visiting the index" do
    visit registrars_url
    assert_selector "h1", text: "Registrars"
  end

  test "creating a Registrar" do
    visit registrars_url
    click_on "New Registrar"

    fill_in "Adultez", with: @registrar.adultez
    fill_in "Carrera", with: @registrar.carrera
    fill_in "Cartel", with: @registrar.cartel
    fill_in "Ciudad", with: @registrar.ciudad
    fill_in "Como", with: @registrar.como
    fill_in "Construccion", with: @registrar.construccion
    fill_in "Correo", with: @registrar.correo
    fill_in "Delser", with: @registrar.delser
    fill_in "Desigualdad", with: @registrar.desigualdad
    fill_in "Direccion", with: @registrar.direccion
    fill_in "Fullname", with: @registrar.fullname
    fill_in "Futuro", with: @registrar.futuro
    fill_in "Institucion", with: @registrar.institucion
    fill_in "Newmun", with: @registrar.newmun
    fill_in "Pais", with: @registrar.pais
    fill_in "Postal", with: @registrar.postal
    fill_in "Quien", with: @registrar.quien
    fill_in "Sustenta", with: @registrar.sustenta
    fill_in "Telefono", with: @registrar.telefono
    fill_in "Titulo", with: @registrar.titulo
    fill_in "Vende", with: @registrar.vende
    click_on "Create Registrar"

    assert_text "Registrar was successfully created"
    click_on "Back"
  end

  test "updating a Registrar" do
    visit registrars_url
    click_on "Edit", match: :first

    fill_in "Adultez", with: @registrar.adultez
    fill_in "Carrera", with: @registrar.carrera
    fill_in "Cartel", with: @registrar.cartel
    fill_in "Ciudad", with: @registrar.ciudad
    fill_in "Como", with: @registrar.como
    fill_in "Construccion", with: @registrar.construccion
    fill_in "Correo", with: @registrar.correo
    fill_in "Delser", with: @registrar.delser
    fill_in "Desigualdad", with: @registrar.desigualdad
    fill_in "Direccion", with: @registrar.direccion
    fill_in "Fullname", with: @registrar.fullname
    fill_in "Futuro", with: @registrar.futuro
    fill_in "Institucion", with: @registrar.institucion
    fill_in "Newmun", with: @registrar.newmun
    fill_in "Pais", with: @registrar.pais
    fill_in "Postal", with: @registrar.postal
    fill_in "Quien", with: @registrar.quien
    fill_in "Sustenta", with: @registrar.sustenta
    fill_in "Telefono", with: @registrar.telefono
    fill_in "Titulo", with: @registrar.titulo
    fill_in "Vende", with: @registrar.vende
    click_on "Update Registrar"

    assert_text "Registrar was successfully updated"
    click_on "Back"
  end

  test "destroying a Registrar" do
    visit registrars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registrar was successfully destroyed"
  end
end
