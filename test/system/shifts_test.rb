require "application_system_test_case"

class ShiftsTest < ApplicationSystemTestCase
  setup do
    @shift = shifts(:one)
  end

  test "visiting the index" do
    visit shifts_url
    assert_selector "h1", text: "Shifts"
  end

  test "creating a Shift" do
    visit shifts_url
    click_on "New Shift"

    check "Clean start" if @shift.clean_start
    check "Late start" if @shift.late_start
    fill_in "Port call", with: @shift.port_call_id
    fill_in "Shift type", with: @shift.shift_type
    click_on "Create Shift"

    assert_text "Shift was successfully created"
    click_on "Back"
  end

  test "updating a Shift" do
    visit shifts_url
    click_on "Edit", match: :first

    check "Clean start" if @shift.clean_start
    check "Late start" if @shift.late_start
    fill_in "Port call", with: @shift.port_call_id
    fill_in "Shift type", with: @shift.shift_type
    click_on "Update Shift"

    assert_text "Shift was successfully updated"
    click_on "Back"
  end

  test "destroying a Shift" do
    visit shifts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shift was successfully destroyed"
  end
end
