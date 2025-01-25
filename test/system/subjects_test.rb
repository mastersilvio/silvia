require "application_system_test_case"

class SubjectsTest < ApplicationSystemTestCase
  setup do
    @subject = subjects(:one)
  end

  test "visiting the index" do
    visit subjects_url
    assert_selector "h1", text: "Subjects"
  end

  test "should create subject" do
    visit subjects_url
    click_on "New subject"

    check "Active" if @subject.active
    fill_in "Description", with: @subject.description
    fill_in "Name", with: @subject.name
    click_on "Create Subject"

    assert_text "Subject was successfully created"
    click_on "Back"
  end

  test "should update Subject" do
    visit subject_url(@subject)
    click_on "Edit this subject", match: :first

    check "Active" if @subject.active
    fill_in "Description", with: @subject.description
    fill_in "Name", with: @subject.name
    click_on "Update Subject"

    assert_text "Subject was successfully updated"
    click_on "Back"
  end

  test "should destroy Subject" do
    visit subject_url(@subject)
    click_on "Destroy this subject", match: :first

    assert_text "Subject was successfully destroyed"
  end
end
