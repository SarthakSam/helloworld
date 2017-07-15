require 'test_helper'

class GroupparticipantsControllerTest < ActionController::TestCase
  setup do
    @groupparticipant = groupparticipants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groupparticipants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groupparticipant" do
    assert_difference('Groupparticipant.count') do
      post :create, groupparticipant: { groupDescription_id: @groupparticipant.groupDescription_id, user_id: @groupparticipant.user_id }
    end

    assert_redirected_to groupparticipant_path(assigns(:groupparticipant))
  end

  test "should show groupparticipant" do
    get :show, id: @groupparticipant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @groupparticipant
    assert_response :success
  end

  test "should update groupparticipant" do
    patch :update, id: @groupparticipant, groupparticipant: { groupDescription_id: @groupparticipant.groupDescription_id, user_id: @groupparticipant.user_id }
    assert_redirected_to groupparticipant_path(assigns(:groupparticipant))
  end

  test "should destroy groupparticipant" do
    assert_difference('Groupparticipant.count', -1) do
      delete :destroy, id: @groupparticipant
    end

    assert_redirected_to groupparticipants_path
  end
end
