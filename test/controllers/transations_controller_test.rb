require 'test_helper'

class TransationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transation = transations(:one)
  end

  test "should get index" do
    get transations_url, as: :json
    assert_response :success
  end

  test "should create transation" do
    assert_difference('Transation.count') do
      post transations_url, params: { transation: { customer_id: @transation.customer_id, product_id: @transation.product_id, quantity: @transation.quantity, transation_date_time: @transation.transation_date_time, transation_id: @transation.transation_id, transation_id_parent: @transation.transation_id_parent, transation_type: @transation.transation_type } }, as: :json
    end

    assert_response 201
  end

  test "should show transation" do
    get transation_url(@transation), as: :json
    assert_response :success
  end

  test "should update transation" do
    patch transation_url(@transation), params: { transation: { customer_id: @transation.customer_id, product_id: @transation.product_id, quantity: @transation.quantity, transation_date_time: @transation.transation_date_time, transation_id: @transation.transation_id, transation_id_parent: @transation.transation_id_parent, transation_type: @transation.transation_type } }, as: :json
    assert_response 200
  end

  test "should destroy transation" do
    assert_difference('Transation.count', -1) do
      delete transation_url(@transation), as: :json
    end

    assert_response 204
  end
end
