require "test_helper"

class RcWorkshopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rc_workshop_index_url
    assert_response :success
  end

  test "should get about_page" do
    get rc_workshop_about_page_url
    assert_response :success
  end

  test "should get contact" do
    get rc_workshop_contact_url
    assert_response :success
  end
end
