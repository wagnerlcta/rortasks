require 'test_helper'

class LeadsControllerTest < ActionController::TestCase
  setup do
    @lead = leads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lead" do
    assert_difference('Lead.count') do
      post :create, lead: { annualrevenue: @lead.annualrevenue, city: @lead.city, code: @lead.code, company: @lead.company, county: @lead.county, description: @lead.description, email: @lead.email, firstname: @lead.firstname, industry: @lead.industry, lastname: @lead.lastname, numberofemployees: @lead.numberofemployees, owner: @lead.owner, phone: @lead.phone, source: @lead.source, state: @lead.state, status: @lead.status, street: @lead.street, title: @lead.title, website: @lead.website, zipcode: @lead.zipcode }
    end

    assert_redirected_to lead_path(assigns(:lead))
  end

  test "should show lead" do
    get :show, id: @lead
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lead
    assert_response :success
  end

  test "should update lead" do
    patch :update, id: @lead, lead: { annualrevenue: @lead.annualrevenue, city: @lead.city, code: @lead.code, company: @lead.company, county: @lead.county, description: @lead.description, email: @lead.email, firstname: @lead.firstname, industry: @lead.industry, lastname: @lead.lastname, numberofemployees: @lead.numberofemployees, owner: @lead.owner, phone: @lead.phone, source: @lead.source, state: @lead.state, status: @lead.status, street: @lead.street, title: @lead.title, website: @lead.website, zipcode: @lead.zipcode }
    assert_redirected_to lead_path(assigns(:lead))
  end

  test "should destroy lead" do
    assert_difference('Lead.count', -1) do
      delete :destroy, id: @lead
    end

    assert_redirected_to leads_path
  end
end
