require 'test_helper'

class BugzillaproductsControllerTest < ActionController::TestCase
  setup do
    @bugzillaproduct = bugzillaproducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bugzillaproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bugzillaproduct" do
    assert_difference('Bugzillaproduct.count') do
      post :create, bugzillaproduct: { code: @bugzillaproduct.code, component: @bugzillaproduct.component, componentdescription: @bugzillaproduct.componentdescription, confirmbugsvotes: @bugzillaproduct.confirmbugsvotes, createchartdatasets: @bugzillaproduct.createchartdatasets, defaultassignee: @bugzillaproduct.defaultassignee, defaultcclist: @bugzillaproduct.defaultcclist, description: @bugzillaproduct.description, enableunconfirmedstatus: @bugzillaproduct.enableunconfirmedstatus, maxvotesperperson: @bugzillaproduct.maxvotesperperson, maxvotespersonperbug: @bugzillaproduct.maxvotespersonperbug, openforbugentry: @bugzillaproduct.openforbugentry, product: @bugzillaproduct.product, version: @bugzillaproduct.version }
    end

    assert_redirected_to bugzillaproduct_path(assigns(:bugzillaproduct))
  end

  test "should show bugzillaproduct" do
    get :show, id: @bugzillaproduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bugzillaproduct
    assert_response :success
  end

  test "should update bugzillaproduct" do
    patch :update, id: @bugzillaproduct, bugzillaproduct: { code: @bugzillaproduct.code, component: @bugzillaproduct.component, componentdescription: @bugzillaproduct.componentdescription, confirmbugsvotes: @bugzillaproduct.confirmbugsvotes, createchartdatasets: @bugzillaproduct.createchartdatasets, defaultassignee: @bugzillaproduct.defaultassignee, defaultcclist: @bugzillaproduct.defaultcclist, description: @bugzillaproduct.description, enableunconfirmedstatus: @bugzillaproduct.enableunconfirmedstatus, maxvotesperperson: @bugzillaproduct.maxvotesperperson, maxvotespersonperbug: @bugzillaproduct.maxvotespersonperbug, openforbugentry: @bugzillaproduct.openforbugentry, product: @bugzillaproduct.product, version: @bugzillaproduct.version }
    assert_redirected_to bugzillaproduct_path(assigns(:bugzillaproduct))
  end

  test "should destroy bugzillaproduct" do
    assert_difference('Bugzillaproduct.count', -1) do
      delete :destroy, id: @bugzillaproduct
    end

    assert_redirected_to bugzillaproducts_path
  end
end
