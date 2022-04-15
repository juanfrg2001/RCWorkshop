require "application_system_test_case"

class PersonWorkshopsTest < ApplicationSystemTestCase
  setup do
    @person_workshop = person_workshops(:one)
  end

  test "visiting the index" do
    visit person_workshops_url
    assert_selector "h1", text: "Person Workshops"
  end

  test "creating a Person workshop" do
    visit person_workshops_url
    click_on "New Person Workshop"

    check "Active" if @person_workshop.active
    fill_in "City", with: @person_workshop.city_id
    fill_in "Person identification", with: @person_workshop.person_identification
    fill_in "Person last name", with: @person_workshop.person_last_name
    fill_in "Person name", with: @person_workshop.person_name
    fill_in "Person telephone", with: @person_workshop.person_telephone
    click_on "Create Person workshop"

    assert_text "Person workshop was successfully created"
    click_on "Back"
  end

  test "updating a Person workshop" do
    visit person_workshops_url
    click_on "Edit", match: :first

    check "Active" if @person_workshop.active
    fill_in "City", with: @person_workshop.city_id
    fill_in "Person identification", with: @person_workshop.person_identification
    fill_in "Person last name", with: @person_workshop.person_last_name
    fill_in "Person name", with: @person_workshop.person_name
    fill_in "Person telephone", with: @person_workshop.person_telephone
    click_on "Update Person workshop"

    assert_text "Person workshop was successfully updated"
    click_on "Back"
  end

  test "destroying a Person workshop" do
    visit person_workshops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person workshop was successfully destroyed"
  end
end
