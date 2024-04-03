require "application_system_test_case"

class XwlbsTest < ApplicationSystemTestCase
  setup do
    @xwlb = xwlbs(:one)
  end

  test "visiting the index" do
    visit xwlbs_url
    assert_selector "h1", text: "Xwlbs"
  end

  test "should create xwlb" do
    visit xwlbs_url
    click_on "New xwlb"

    fill_in "Date", with: @xwlb.date
    fill_in "Fulltext", with: @xwlb.fulltext
    fill_in "Index of day", with: @xwlb.index_of_day
    fill_in "Title", with: @xwlb.title
    click_on "Create Xwlb"

    assert_text "Xwlb was successfully created"
    click_on "Back"
  end

  test "should update Xwlb" do
    visit xwlb_url(@xwlb)
    click_on "Edit this xwlb", match: :first

    fill_in "Date", with: @xwlb.date
    fill_in "Fulltext", with: @xwlb.fulltext
    fill_in "Index of day", with: @xwlb.index_of_day
    fill_in "Title", with: @xwlb.title
    click_on "Update Xwlb"

    assert_text "Xwlb was successfully updated"
    click_on "Back"
  end

  test "should destroy Xwlb" do
    visit xwlb_url(@xwlb)
    click_on "Destroy this xwlb", match: :first

    assert_text "Xwlb was successfully destroyed"
  end
end
