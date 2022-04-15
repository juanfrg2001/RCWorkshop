require "test_helper"

class PersonWorkshopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_workshop = person_workshops(:one)
  end

  test "should get index" do
    get person_workshops_url
    assert_response :success
  end

  test "should get new" do
    get new_person_workshop_url
    assert_response :success
  end

  test "should create person_workshop" do
    assert_difference('PersonWorkshop.count') do
      post person_workshops_url, params: { person_workshop: { active: @person_workshop.active, city_id: @person_workshop.city_id, person_identification: @person_workshop.person_identification, person_last_name: @person_workshop.person_last_name, person_name: @person_workshop.person_name, person_telephone: @person_workshop.person_telephone } }
    end

    assert_redirected_to person_workshop_url(PersonWorkshop.last)
  end

  test "should show person_workshop" do
    get person_workshop_url(@person_workshop)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_workshop_url(@person_workshop)
    assert_response :success
  end

  test "should update person_workshop" do
    patch person_workshop_url(@person_workshop), params: { person_workshop: { active: @person_workshop.active, city_id: @person_workshop.city_id, person_identification: @person_workshop.person_identification, person_last_name: @person_workshop.person_last_name, person_name: @person_workshop.person_name, person_telephone: @person_workshop.person_telephone } }
    assert_redirected_to person_workshop_url(@person_workshop)
  end

  test "should destroy person_workshop" do
    assert_difference('PersonWorkshop.count', -1) do
      delete person_workshop_url(@person_workshop)
    end

    assert_redirected_to person_workshops_url
  end
end
