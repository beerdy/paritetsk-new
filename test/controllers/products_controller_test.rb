require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { description: @product.description, image1_name: @product.image1_name, image1_uid: @product.image1_uid, image2_name: @product.image2_name, image2_uid: @product.image2_uid, slave: @product.slave, sort: @product.sort, title: @product.title, url: @product.url } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { description: @product.description, image1_name: @product.image1_name, image1_uid: @product.image1_uid, image2_name: @product.image2_name, image2_uid: @product.image2_uid, slave: @product.slave, sort: @product.sort, title: @product.title, url: @product.url } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
