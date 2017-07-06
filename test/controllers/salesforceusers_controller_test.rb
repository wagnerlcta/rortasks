require 'test_helper'

class SalesforceusersControllerTest < ActionController::TestCase
  setup do
    @salesforceuser = salesforceusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salesforceusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salesforceuser" do
    assert_difference('Salesforceuser.count') do
      post :create, salesforceuser: { active: @salesforceuser.active, address: @salesforceuser.address, alias: @salesforceuser.alias, communitynickname: @salesforceuser.communitynickname, company: @salesforceuser.company, delegatedapprover: @salesforceuser.delegatedapprover, department: @salesforceuser.department, division: @salesforceuser.division, email: @salesforceuser.email, forcecomflowuser: @salesforceuser.forcecomflowuser, knowledgeuser: @salesforceuser.knowledgeuser, language: @salesforceuser.language, locale: @salesforceuser.locale, manager: @salesforceuser.manager, marketinguser: @salesforceuser.marketinguser, mobileuser: @salesforceuser.mobileuser, name: @salesforceuser.name, offlineuser: @salesforceuser.offlineuser, profile: @salesforceuser.profile, role: @salesforceuser.role, serviceclouduser: @salesforceuser.serviceclouduser, sitecomcontributoruser: @salesforceuser.sitecomcontributoruser, sitecompublisheruser: @salesforceuser.sitecompublisheruser, timezone: @salesforceuser.timezone, title: @salesforceuser.title, userlicense: @salesforceuser.userlicense, username: @salesforceuser.username }
    end

    assert_redirected_to salesforceuser_path(assigns(:salesforceuser))
  end

  test "should show salesforceuser" do
    get :show, id: @salesforceuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salesforceuser
    assert_response :success
  end

  test "should update salesforceuser" do
    patch :update, id: @salesforceuser, salesforceuser: { active: @salesforceuser.active, address: @salesforceuser.address, alias: @salesforceuser.alias, communitynickname: @salesforceuser.communitynickname, company: @salesforceuser.company, delegatedapprover: @salesforceuser.delegatedapprover, department: @salesforceuser.department, division: @salesforceuser.division, email: @salesforceuser.email, forcecomflowuser: @salesforceuser.forcecomflowuser, knowledgeuser: @salesforceuser.knowledgeuser, language: @salesforceuser.language, locale: @salesforceuser.locale, manager: @salesforceuser.manager, marketinguser: @salesforceuser.marketinguser, mobileuser: @salesforceuser.mobileuser, name: @salesforceuser.name, offlineuser: @salesforceuser.offlineuser, profile: @salesforceuser.profile, role: @salesforceuser.role, serviceclouduser: @salesforceuser.serviceclouduser, sitecomcontributoruser: @salesforceuser.sitecomcontributoruser, sitecompublisheruser: @salesforceuser.sitecompublisheruser, timezone: @salesforceuser.timezone, title: @salesforceuser.title, userlicense: @salesforceuser.userlicense, username: @salesforceuser.username }
    assert_redirected_to salesforceuser_path(assigns(:salesforceuser))
  end

  test "should destroy salesforceuser" do
    assert_difference('Salesforceuser.count', -1) do
      delete :destroy, id: @salesforceuser
    end

    assert_redirected_to salesforceusers_path
  end
end
