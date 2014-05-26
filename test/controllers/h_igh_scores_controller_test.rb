require 'test_helper'

class HIghScoresControllerTest < ActionController::TestCase
  setup do
    @h_igh_score = h_igh_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:h_igh_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create h_igh_score" do
    assert_difference('HIghScore.count') do
      post :create, h_igh_score: { game: @h_igh_score.game, score: @h_igh_score.score }
    end

    assert_redirected_to h_igh_score_path(assigns(:h_igh_score))
  end

  test "should show h_igh_score" do
    get :show, id: @h_igh_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @h_igh_score
    assert_response :success
  end

  test "should update h_igh_score" do
    patch :update, id: @h_igh_score, h_igh_score: { game: @h_igh_score.game, score: @h_igh_score.score }
    assert_redirected_to h_igh_score_path(assigns(:h_igh_score))
  end

  test "should destroy h_igh_score" do
    assert_difference('HIghScore.count', -1) do
      delete :destroy, id: @h_igh_score
    end

    assert_redirected_to h_igh_scores_path
  end
end
