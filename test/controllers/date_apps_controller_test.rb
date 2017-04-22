require 'test_helper'

class DateAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_app = date_apps(:one)
  end

  test "should get index" do
    get date_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_date_app_url
    assert_response :success
  end

  test "should create date_app" do
    assert_difference('DateApp.count') do
      post date_apps_url, params: { date_app: { age: @date_app.age, dislikes: @date_app.dislikes, name: @date_app.name, sex: @date_app.sex } }
    end

    assert_redirected_to date_app_url(DateApp.last)
  end

  test "should show date_app" do
    get date_app_url(@date_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_app_url(@date_app)
    assert_response :success
  end

  test "should update date_app" do
    patch date_app_url(@date_app), params: { date_app: { age: @date_app.age, dislikes: @date_app.dislikes, name: @date_app.name, sex: @date_app.sex } }
    assert_redirected_to date_app_url(@date_app)
  end

  test "should destroy date_app" do
    assert_difference('DateApp.count', -1) do
      delete date_app_url(@date_app)
    end

    assert_redirected_to date_apps_url
  end
end
