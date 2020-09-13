require "application_system_test_case"

class WareHousesTest < ApplicationSystemTestCase
  setup do
    @ware_house = ware_houses(:one)
  end

  test "visiting the index" do
    visit ware_houses_url
    assert_selector "h1", text: "Ware Houses"
  end

  test "creating a Ware house" do
    visit ware_houses_url
    click_on "New Ware House"

    click_on "Create Ware house"

    assert_text "Ware house was successfully created"
    click_on "Back"
  end

  test "updating a Ware house" do
    visit ware_houses_url
    click_on "Edit", match: :first

    click_on "Update Ware house"

    assert_text "Ware house was successfully updated"
    click_on "Back"
  end

  test "destroying a Ware house" do
    visit ware_houses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ware house was successfully destroyed"
  end
end
