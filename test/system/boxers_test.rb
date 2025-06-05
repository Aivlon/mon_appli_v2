require "application_system_test_case"

class BoxersTest < ApplicationSystemTestCase
  setup do
    @boxer = boxers(:one)
  end

  test "visiting the index" do
    visit boxers_url
    assert_selector "h1", text: "Boxers"
  end

  test "should create boxer" do
    visit boxers_url
    click_on "New boxer"

    click_on "Create Boxer"

    assert_text "Boxer was successfully created"
    click_on "Back"
  end

  test "should update Boxer" do
    visit boxer_url(@boxer)
    click_on "Edit this boxer", match: :first

    click_on "Update Boxer"

    assert_text "Boxer was successfully updated"
    click_on "Back"
  end

  test "should destroy Boxer" do
    visit boxer_url(@boxer)
    click_on "Destroy this boxer", match: :first

    assert_text "Boxer was successfully destroyed"
  end
end
