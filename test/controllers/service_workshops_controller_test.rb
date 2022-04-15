require "test_helper"

class ServiceWorkshopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_workshop = service_workshops(:one)
  end

  test "should get index" do
    get service_workshops_url
    assert_response :success
  end

  test "should get new" do
    get new_service_workshop_url
    assert_response :success
  end

  test "should create service_workshop" do
    assert_difference('ServiceWorkshop.count') do
      post service_workshops_url, params: { service_workshop: { car_specialization: @service_workshop.car_specialization, duration: @service_workshop.duration, name: @service_workshop.name, objective: @service_workshop.objective, workshop_id: @service_workshop.workshop_id } }
    end

    assert_redirected_to service_workshop_url(ServiceWorkshop.last)
  end

  test "should show service_workshop" do
    get service_workshop_url(@service_workshop)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_workshop_url(@service_workshop)
    assert_response :success
  end

  test "should update service_workshop" do
    patch service_workshop_url(@service_workshop), params: { service_workshop: { car_specialization: @service_workshop.car_specialization, duration: @service_workshop.duration, name: @service_workshop.name, objective: @service_workshop.objective, workshop_id: @service_workshop.workshop_id } }
    assert_redirected_to service_workshop_url(@service_workshop)
  end

  test "should destroy service_workshop" do
    assert_difference('ServiceWorkshop.count', -1) do
      delete service_workshop_url(@service_workshop)
    end

    assert_redirected_to service_workshops_url
  end
end
