require 'test_helper'

class BugzillausersControllerTest < ActionController::TestCase
  setup do
    @bugzillauser = bugzillausers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bugzillausers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bugzillauser" do
    assert_difference('Bugzillauser.count') do
      post :create, bugzillauser: { adminpermission: @bugzillauser.adminpermission, bugmaildisabled: @bugzillauser.bugmaildisabled, creategroupspermission: @bugzillauser.creategroupspermission, disabletext: @bugzillauser.disabletext, edituserspermission: @bugzillauser.edituserspermission, loginname: @bugzillauser.loginname, password: @bugzillauser.password, realname: @bugzillauser.realname }
    end

    assert_redirected_to bugzillauser_path(assigns(:bugzillauser))
  end

  test "should show bugzillauser" do
    get :show, id: @bugzillauser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bugzillauser
    assert_response :success
  end

  test "should update bugzillauser" do
    patch :update, id: @bugzillauser, bugzillauser: { adminpermission: @bugzillauser.adminpermission, bugmaildisabled: @bugzillauser.bugmaildisabled, creategroupspermission: @bugzillauser.creategroupspermission, disabletext: @bugzillauser.disabletext, edituserspermission: @bugzillauser.edituserspermission, loginname: @bugzillauser.loginname, password: @bugzillauser.password, realname: @bugzillauser.realname }
    assert_redirected_to bugzillauser_path(assigns(:bugzillauser))
  end

  test "should destroy bugzillauser" do
    assert_difference('Bugzillauser.count', -1) do
      delete :destroy, id: @bugzillauser
    end

    assert_redirected_to bugzillausers_path
  end
end
