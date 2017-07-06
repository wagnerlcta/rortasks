require 'test_helper'

class IssuesControllerTest < ActionController::TestCase
  setup do
    @issue = issues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue" do
    assert_difference('Issue.count') do
      post :create, issue: { affectsversions: @issue.affectsversions, assignee: @issue.assignee, code: @issue.code, components: @issue.components, description: @issue.description, duedate: @issue.duedate, environment: @issue.environment, epic: @issue.epic, fixversions: @issue.fixversions, issuetype: @issue.issuetype, labels: @issue.labels, priority: @issue.priority, project: @issue.project, sprint: @issue.sprint, storypoints: @issue.storypoints, summary: @issue.summary }
    end

    assert_redirected_to issue_path(assigns(:issue))
  end

  test "should show issue" do
    get :show, id: @issue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue
    assert_response :success
  end

  test "should update issue" do
    patch :update, id: @issue, issue: { affectsversions: @issue.affectsversions, assignee: @issue.assignee, code: @issue.code, components: @issue.components, description: @issue.description, duedate: @issue.duedate, environment: @issue.environment, epic: @issue.epic, fixversions: @issue.fixversions, issuetype: @issue.issuetype, labels: @issue.labels, priority: @issue.priority, project: @issue.project, sprint: @issue.sprint, storypoints: @issue.storypoints, summary: @issue.summary }
    assert_redirected_to issue_path(assigns(:issue))
  end

  test "should destroy issue" do
    assert_difference('Issue.count', -1) do
      delete :destroy, id: @issue
    end

    assert_redirected_to issues_path
  end
end
