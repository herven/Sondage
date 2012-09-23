require 'test_helper'

class ReponsesControllerTest < ActionController::TestCase
  setup do
    @reponse = reponses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reponses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reponse" do
    assert_difference('Reponse.count') do
      post :create, reponse: { answer: @reponse.answer, question_id: @reponse.question_id }
    end

    assert_redirected_to reponse_path(assigns(:reponse))
  end

  test "should show reponse" do
    get :show, id: @reponse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reponse
    assert_response :success
  end

  test "should update reponse" do
    put :update, id: @reponse, reponse: { answer: @reponse.answer, question_id: @reponse.question_id }
    assert_redirected_to reponse_path(assigns(:reponse))
  end

  test "should destroy reponse" do
    assert_difference('Reponse.count', -1) do
      delete :destroy, id: @reponse
    end

    assert_redirected_to reponses_path
  end
end
