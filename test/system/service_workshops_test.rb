require "application_system_test_case"

class ServiceWorkshopsTest < ApplicationSystemTestCase
  setup do
    @service_workshop = service_workshops(:one)
  end

  test "visiting the index" do
    visit service_workshops_url
    assert_selector "h1", text: "Service Workshops"
  end

  test "creating a Service workshop" do
    visit service_workshops_url
    click_on "New Service Workshop"

    fill_in "Car specialization", with: @service_workshop.car_specialization
    fill_in "Duration", with: @service_workshop.duration
    fill_in "Name", with: @service_workshop.name
    fill_in "Objective", with: @service_workshop.objective
    fill_in "Workshop", with: @service_workshop.workshop_id
    click_on "Create Service workshop"

    assert_text "Service workshop was successfully created"
    click_on "Back"
  end

  test "updating a Service workshop" do
    visit service_workshops_url
    click_on "Edit", match: :first

    fill_in "Car specialization", with: @service_workshop.car_specialization
    fill_in "Duration", with: @service_workshop.duration
    fill_in "Name", with: @service_workshop.name
    fill_in "Objective", with: @service_workshop.objective
    fill_in "Workshop", with: @service_workshop.workshop_id
    click_on "Update Service workshop"

    assert_text "Service workshop was successfully updated"
    click_on "Back"
  end

  test "destroying a Service workshop" do
    visit service_workshops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service workshop was successfully destroyed"
  end
end
