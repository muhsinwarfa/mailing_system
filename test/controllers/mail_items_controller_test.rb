require 'test_helper'

class MailItemsControllerTest < ActionController::TestCase
  setup do
    @mail_item = mail_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mail_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mail_item" do
    assert_difference('MailItem.count') do
      post :create, mail_item: { comment: @mail_item.comment, date_arrived_pittsburgh: @mail_item.date_arrived_pittsburgh, date_arrived_qatar: @mail_item.date_arrived_qatar, date_delivered: @mail_item.date_delivered, description: @mail_item.description, discard: @mail_item.discard, sender: @mail_item.sender, shipping_weight: @mail_item.shipping_weight, user_id: @mail_item.user_id }
    end

    assert_redirected_to mail_item_path(assigns(:mail_item))
  end

  test "should show mail_item" do
    get :show, id: @mail_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mail_item
    assert_response :success
  end

  test "should update mail_item" do
    patch :update, id: @mail_item, mail_item: { comment: @mail_item.comment, date_arrived_pittsburgh: @mail_item.date_arrived_pittsburgh, date_arrived_qatar: @mail_item.date_arrived_qatar, date_delivered: @mail_item.date_delivered, description: @mail_item.description, discard: @mail_item.discard, sender: @mail_item.sender, shipping_weight: @mail_item.shipping_weight, user_id: @mail_item.user_id }
    assert_redirected_to mail_item_path(assigns(:mail_item))
  end

  test "should destroy mail_item" do
    assert_difference('MailItem.count', -1) do
      delete :destroy, id: @mail_item
    end

    assert_redirected_to mail_items_path
  end
end
