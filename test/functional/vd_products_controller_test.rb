require 'test_helper'

class VdProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vd_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vd_product" do
    assert_difference('VdProduct.count') do
      post :create, :vd_product => { }
    end

    assert_redirected_to vd_product_path(assigns(:vd_product))
  end

  test "should show vd_product" do
    get :show, :id => vd_products(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vd_products(:one).to_param
    assert_response :success
  end

  test "should update vd_product" do
    put :update, :id => vd_products(:one).to_param, :vd_product => { }
    assert_redirected_to vd_product_path(assigns(:vd_product))
  end

  test "should destroy vd_product" do
    assert_difference('VdProduct.count', -1) do
      delete :destroy, :id => vd_products(:one).to_param
    end

    assert_redirected_to vd_products_path
  end
end
