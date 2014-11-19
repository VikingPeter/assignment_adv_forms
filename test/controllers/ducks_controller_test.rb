require 'test_helper'

class DucksControllerTest < ActionController::TestCase
  setup do
    @duck = ducks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ducks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create duck" do
    assert_difference('Duck.count') do
      post :create, duck: { color: @duck.color, name: @duck.name, person_id: @duck.person_id, totability: @duck.totability }
    end

    assert_redirected_to duck_path(assigns(:duck))
  end

  test "should show duck" do
    get :show, id: @duck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @duck
    assert_response :success
  end

  test "should update duck" do
    patch :update, id: @duck, duck: { color: @duck.color, name: @duck.name, person_id: @duck.person_id, totability: @duck.totability }
    assert_redirected_to duck_path(assigns(:duck))
  end

  test "should destroy duck" do
    assert_difference('Duck.count', -1) do
      delete :destroy, id: @duck
    end

    assert_redirected_to ducks_path
  end
end
