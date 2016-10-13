require 'test_helper'

class TerminsControllerTest < ActionController::TestCase
  setup do
    @termin = termins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:termins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create termin" do
    assert_difference('Termin.count') do
      post :create, termin: { behandlungsart: @termin.behandlungsart, behandlungstermin: @termin.behandlungstermin }
    end

    assert_redirected_to termin_path(assigns(:termin))
  end

  test "should show termin" do
    get :show, id: @termin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @termin
    assert_response :success
  end

  test "should update termin" do
    patch :update, id: @termin, termin: { behandlungsart: @termin.behandlungsart, behandlungstermin: @termin.behandlungstermin }
    assert_redirected_to termin_path(assigns(:termin))
  end

  test "should destroy termin" do
    assert_difference('Termin.count', -1) do
      delete :destroy, id: @termin
    end

    assert_redirected_to termins_path
  end
end
