require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { code: @course.code, courseidnumber: @course.courseidnumber, defaultroles: @course.defaultroles, format: @course.format, fullname: @course.fullname, hiddensections: @course.hiddensections, maxuploadsize: @course.maxuploadsize, newsitemstoshow: @course.newsitemstoshow, numberofweekstopics: @course.numberofweekstopics, shortname: @course.shortname, showactivityreports: @course.showactivityreports, showgrades: @course.showgrades, start: @course.start, summary: @course.summary }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    patch :update, id: @course, course: { code: @course.code, courseidnumber: @course.courseidnumber, defaultroles: @course.defaultroles, format: @course.format, fullname: @course.fullname, hiddensections: @course.hiddensections, maxuploadsize: @course.maxuploadsize, newsitemstoshow: @course.newsitemstoshow, numberofweekstopics: @course.numberofweekstopics, shortname: @course.shortname, showactivityreports: @course.showactivityreports, showgrades: @course.showgrades, start: @course.start, summary: @course.summary }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
