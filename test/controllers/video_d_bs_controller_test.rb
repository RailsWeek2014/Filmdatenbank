require 'test_helper'

class VideoDBsControllerTest < ActionController::TestCase
  setup do
    @video_db = video_dbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_dbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_db" do
    assert_difference('VideoDb.count') do
      post :create, video_db: {  title: @video_db. title, actor: @video_db.actor, genere: @video_db.genere, maingenere: @video_db.maingenere, year: @video_db.year }
    end

    assert_redirected_to video_db_path(assigns(:video_db))
  end

  test "should show video_db" do
    get :show, id: @video_db
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_db
    assert_response :success
  end

  test "should update video_db" do
    patch :update, id: @video_db, video_db: {  title: @video_db. title, actor: @video_db.actor, genere: @video_db.genere, maingenere: @video_db.maingenere, year: @video_db.year }
    assert_redirected_to video_db_path(assigns(:video_db))
  end

  test "should destroy video_db" do
    assert_difference('VideoDb.count', -1) do
      delete :destroy, id: @video_db
    end

    assert_redirected_to video_dbs_path
  end
end
