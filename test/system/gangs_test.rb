require "application_system_test_case"

class GangsTest < ApplicationSystemTestCase
  setup do
    @gang = gangs(:one)
  end

  test "visiting the index" do
    visit gangs_url
    assert_selector "h1", text: "Gangs"
  end

  test "creating a Gang" do
    visit gangs_url
    click_on "New Gang"

    check "Flexed" if @gang.flexed
    fill_in "Note", with: @gang.note
    fill_in "Shift", with: @gang.shift_id
    fill_in "Top pick", with: @gang.top_pick
    fill_in "Utr", with: @gang.utr
    click_on "Create Gang"

    assert_text "Gang was successfully created"
    click_on "Back"
  end

  test "updating a Gang" do
    visit gangs_url
    click_on "Edit", match: :first

    check "Flexed" if @gang.flexed
    fill_in "Note", with: @gang.note
    fill_in "Shift", with: @gang.shift_id
    fill_in "Top pick", with: @gang.top_pick
    fill_in "Utr", with: @gang.utr
    click_on "Update Gang"

    assert_text "Gang was successfully updated"
    click_on "Back"
  end

  test "destroying a Gang" do
    visit gangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gang was successfully destroyed"
  end
end
