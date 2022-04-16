require "application_system_test_case"

class WorkshopsTest < ApplicationSystemTestCase
  setup do
    @workshop = workshops(:one)
  end

  test "visiting the index" do
    visit workshops_url
    assert_selector "h1", text: "Workshops"
  end

  test "creating a Workshop" do
    visit workshops_url
    click_on "New Workshop"

    check "Active" if @workshop.active
    fill_in "City", with: @workshop.city_id
    fill_in "Location", with: @workshop.location_id
    fill_in "Name", with: @workshop.name
    fill_in "Person workshop", with: @workshop.person_workshop_id
    check "Priority" if @workshop.priority
    click_on "Create Workshop"

    assert_text "Workshop was successfully created"
    click_on "Back"
  end

  test "updating a Workshop" do
    visit workshops_url
    click_on "Edit", match: :first

    check "Active" if @workshop.active
    fill_in "City", with: @workshop.city_id
    fill_in "Location", with: @workshop.location_id
    fill_in "Name", with: @workshop.name
    fill_in "Person workshop", with: @workshop.person_workshop_id
    check "Priority" if @workshop.priority
    click_on "Update Workshop"

    assert_text "Workshop was successfully updated"
    click_on "Back"
  end

  test "destroying a Workshop" do
    visit workshops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workshop was successfully destroyed"
  end
end
