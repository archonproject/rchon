require 'test_helper'

class ResarchCartsControllerTest < ActionController::TestCase
  setup do
    @resarch_cart = resarch_carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resarch_carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resarch_cart" do
    assert_difference('ResarchCart.count') do
      post :create, resarch_cart: { collection_content_id: @resarch_cart.collection_content_id, collection_id: @resarch_cart.collection_id, researcher_id: @resarch_cart.researcher_id }
    end

    assert_redirected_to resarch_cart_path(assigns(:resarch_cart))
  end

  test "should show resarch_cart" do
    get :show, id: @resarch_cart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resarch_cart
    assert_response :success
  end

  test "should update resarch_cart" do
    put :update, id: @resarch_cart, resarch_cart: { collection_content_id: @resarch_cart.collection_content_id, collection_id: @resarch_cart.collection_id, researcher_id: @resarch_cart.researcher_id }
    assert_redirected_to resarch_cart_path(assigns(:resarch_cart))
  end

  test "should destroy resarch_cart" do
    assert_difference('ResarchCart.count', -1) do
      delete :destroy, id: @resarch_cart
    end

    assert_redirected_to resarch_carts_path
  end
end
