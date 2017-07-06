require 'test_helper'

class BugsControllerTest < ActionController::TestCase
  setup do
    @bug = bugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bug" do
    assert_difference('Bug.count') do
      post :create, bug: { additionalcomments: @bug.additionalcomments, assignedto: @bug.assignedto, blocks: @bug.blocks, code: @bug.code, component: @bug.component, deadline: @bug.deadline, dependson: @bug.dependson, description: @bug.description, hardware: @bug.hardware, hoursleft: @bug.hoursleft, hoursworked: @bug.hoursworked, importance: @bug.importance, keywords: @bug.keywords, origestimated: @bug.origestimated, product: @bug.product, qacontact: @bug.qacontact, status: @bug.status, summary: @bug.summary, tags: @bug.tags, targetmilestone: @bug.targetmilestone, url: @bug.url, version: @bug.version, whiteboard: @bug.whiteboard }
    end

    assert_redirected_to bug_path(assigns(:bug))
  end

  test "should show bug" do
    get :show, id: @bug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bug
    assert_response :success
  end

  test "should update bug" do
    patch :update, id: @bug, bug: { additionalcomments: @bug.additionalcomments, assignedto: @bug.assignedto, blocks: @bug.blocks, code: @bug.code, component: @bug.component, deadline: @bug.deadline, dependson: @bug.dependson, description: @bug.description, hardware: @bug.hardware, hoursleft: @bug.hoursleft, hoursworked: @bug.hoursworked, importance: @bug.importance, keywords: @bug.keywords, origestimated: @bug.origestimated, product: @bug.product, qacontact: @bug.qacontact, status: @bug.status, summary: @bug.summary, tags: @bug.tags, targetmilestone: @bug.targetmilestone, url: @bug.url, version: @bug.version, whiteboard: @bug.whiteboard }
    assert_redirected_to bug_path(assigns(:bug))
  end

  test "should destroy bug" do
    assert_difference('Bug.count', -1) do
      delete :destroy, id: @bug
    end

    assert_redirected_to bugs_path
  end
end
