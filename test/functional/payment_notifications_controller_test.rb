require 'test_helper'

class PaymentNotificationsControllerTest < ActionController::TestCase
  setup do
    @payment_notification = payment_notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_notification" do
    assert_difference('PaymentNotification.count') do
      post :create, payment_notification: { params: @payment_notification.params, paypal_id: @payment_notification.paypal_id, status: @payment_notification.status, transaction_id: @payment_notification.transaction_id }
    end

    assert_redirected_to payment_notification_path(assigns(:payment_notification))
  end

  test "should show payment_notification" do
    get :show, id: @payment_notification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_notification
    assert_response :success
  end

  test "should update payment_notification" do
    put :update, id: @payment_notification, payment_notification: { params: @payment_notification.params, paypal_id: @payment_notification.paypal_id, status: @payment_notification.status, transaction_id: @payment_notification.transaction_id }
    assert_redirected_to payment_notification_path(assigns(:payment_notification))
  end

  test "should destroy payment_notification" do
    assert_difference('PaymentNotification.count', -1) do
      delete :destroy, id: @payment_notification
    end

    assert_redirected_to payment_notifications_path
  end
end
