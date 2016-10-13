require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { admin: @user.admin, befund: @user.befund, email: @user.email, geburtsdatum: @user.geburtsdatum, hausnummer: @user.hausnummer, krankenkasse: @user.krankenkasse, name: @user.name, ort: @user.ort, password_digest: @user.password_digest, patient: @user.patient, physio: @user.physio, plz: @user.plz, qualifikation: @user.qualifikation, straße: @user.straße, telefonnummer: @user.telefonnummer, username: @user.username, vorname: @user.vorname }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { admin: @user.admin, befund: @user.befund, email: @user.email, geburtsdatum: @user.geburtsdatum, hausnummer: @user.hausnummer, krankenkasse: @user.krankenkasse, name: @user.name, ort: @user.ort, password_digest: @user.password_digest, patient: @user.patient, physio: @user.physio, plz: @user.plz, qualifikation: @user.qualifikation, straße: @user.straße, telefonnummer: @user.telefonnummer, username: @user.username, vorname: @user.vorname }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
