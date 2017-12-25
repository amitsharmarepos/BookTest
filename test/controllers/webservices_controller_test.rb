require 'test_helper'

class WebservicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @webservice = webservices(:one)
  end

  test "should get index" do
    get webservices_url
    assert_response :success
  end

  test "should get new" do
    get new_webservice_url
    assert_response :success
  end

  test "should create webservice" do
    assert_difference('Webservice.count') do
      post webservices_url, params: { webservice: {  } }
    end

    assert_redirected_to webservice_url(Webservice.last)
  end

  test "should show webservice" do
    get webservice_url(@webservice)
    assert_response :success
  end

  test "should get edit" do
    get edit_webservice_url(@webservice)
    assert_response :success
  end

  test "should update webservice" do
    patch webservice_url(@webservice), params: { webservice: {  } }
    assert_redirected_to webservice_url(@webservice)
  end

  test "should destroy webservice" do
    assert_difference('Webservice.count', -1) do
      delete webservice_url(@webservice)
    end

    assert_redirected_to webservices_url
  end
end
