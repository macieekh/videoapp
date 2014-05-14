require 'test_helper'

class ChapterElementsControllerTest < ActionController::TestCase
  setup do
    @chapter_element = chapter_elements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chapter_elements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chapter_element" do
    assert_difference('ChapterElement.count') do
      post :create, chapter_element: { description: @chapter_element.description, position: @chapter_element.position, title: @chapter_element.title }
    end

    assert_redirected_to chapter_element_path(assigns(:chapter_element))
  end

  test "should show chapter_element" do
    get :show, id: @chapter_element
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chapter_element
    assert_response :success
  end

  test "should update chapter_element" do
    patch :update, id: @chapter_element, chapter_element: { description: @chapter_element.description, position: @chapter_element.position, title: @chapter_element.title }
    assert_redirected_to chapter_element_path(assigns(:chapter_element))
  end

  test "should destroy chapter_element" do
    assert_difference('ChapterElement.count', -1) do
      delete :destroy, id: @chapter_element
    end

    assert_redirected_to chapter_elements_path
  end
end
