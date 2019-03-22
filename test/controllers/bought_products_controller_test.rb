require 'test_helper'

class BoughtProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bought_product = bought_products(:one)
  end

  test "should get index" do
    get bought_products_url
    assert_response :success
  end

  test "should get new" do
    get new_bought_product_url
    assert_response :success
  end

  test "should create bought_product" do
    assert_difference('BoughtProduct.count') do
      post bought_products_url, params: { bought_product: { product_id: @bought_product.product_id, user_id: @bought_product.user_id } }
    end

    assert_redirected_to bought_product_url(BoughtProduct.last)
  end

  test "should show bought_product" do
    get bought_product_url(@bought_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_bought_product_url(@bought_product)
    assert_response :success
  end

  test "should update bought_product" do
    patch bought_product_url(@bought_product), params: { bought_product: { product_id: @bought_product.product_id, user_id: @bought_product.user_id } }
    assert_redirected_to bought_product_url(@bought_product)
  end

  test "should destroy bought_product" do
    assert_difference('BoughtProduct.count', -1) do
      delete bought_product_url(@bought_product)
    end

    assert_redirected_to bought_products_url
  end
end
