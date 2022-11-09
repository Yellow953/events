require "application_system_test_case"

class MyeventsTest < ApplicationSystemTestCase
  setup do
    @myevent = myevents(:one)
  end

  test "visiting the index" do
    visit myevents_url
    assert_selector "h1", text: "Myevents"
  end

  test "should create myevent" do
    visit myevents_url
    click_on "New myevent"

    fill_in "Event date", with: @myevent.event_date
    fill_in "Name", with: @myevent.name
    click_on "Create Myevent"

    assert_text "Myevent was successfully created"
    click_on "Back"
  end

  test "should update Myevent" do
    visit myevent_url(@myevent)
    click_on "Edit this myevent", match: :first

    fill_in "Event date", with: @myevent.event_date
    fill_in "Name", with: @myevent.name
    click_on "Update Myevent"

    assert_text "Myevent was successfully updated"
    click_on "Back"
  end

  test "should destroy Myevent" do
    visit myevent_url(@myevent)
    click_on "Destroy this myevent", match: :first

    assert_text "Myevent was successfully destroyed"
  end
end
