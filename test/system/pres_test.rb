require "application_system_test_case"

class PresTest < ApplicationSystemTestCase
  setup do
    @pre = pres(:one)
  end

  test "visiting the index" do
    visit pres_url
    assert_selector "h1", text: "Pres"
  end

  test "creating a Pre" do
    visit pres_url
    click_on "New Pre"

    fill_in "Correo", with: @pre.correo
    fill_in "Nombre", with: @pre.nombre
    click_on "Create Pre"

    assert_text "Pre was successfully created"
    click_on "Back"
  end

  test "updating a Pre" do
    visit pres_url
    click_on "Edit", match: :first

    fill_in "Correo", with: @pre.correo
    fill_in "Nombre", with: @pre.nombre
    click_on "Update Pre"

    assert_text "Pre was successfully updated"
    click_on "Back"
  end

  test "destroying a Pre" do
    visit pres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pre was successfully destroyed"
  end
end
