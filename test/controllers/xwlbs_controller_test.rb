require "test_helper"

class XwlbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @xwlb = xwlbs(:one)
  end

  test "should get index" do
    get xwlbs_url
    assert_response :success
  end

  test "should get new" do
    get new_xwlb_url
    assert_response :success
  end

  test "should create xwlb" do
    assert_difference("Xwlb.count") do
      post xwlbs_url, params: { xwlb: { date: @xwlb.date, fulltext: @xwlb.fulltext, index_of_day: @xwlb.index_of_day, title: @xwlb.title } }
    end

    assert_redirected_to xwlb_url(Xwlb.last)
  end

  test "should show xwlb" do
    get xwlb_url(@xwlb)
    assert_response :success
  end

  test "should get edit" do
    get edit_xwlb_url(@xwlb)
    assert_response :success
  end

  test "should update xwlb" do
    patch xwlb_url(@xwlb), params: { xwlb: { date: @xwlb.date, fulltext: @xwlb.fulltext, index_of_day: @xwlb.index_of_day, title: @xwlb.title } }
    assert_redirected_to xwlb_url(@xwlb)
  end

  test "should destroy xwlb" do
    assert_difference("Xwlb.count", -1) do
      delete xwlb_url(@xwlb)
    end

    assert_redirected_to xwlbs_url
  end
end
