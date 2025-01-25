require "application_system_test_case"

class AlternativesTest < ApplicationSystemTestCase
  setup do
    @alternative = alternatives(:one)
  end

  test "visiting the index" do
    visit alternatives_url
    assert_selector "h1", text: "Alternatives"
  end

  test "should create alternative" do
    visit alternatives_url
    click_on "New alternative"

    fill_in "Content", with: @alternative.content
    check "Correct" if @alternative.correct
    fill_in "Order", with: @alternative.order
    fill_in "Question", with: @alternative.question_id
    click_on "Create Alternative"

    assert_text "Alternative was successfully created"
    click_on "Back"
  end

  test "should update Alternative" do
    visit alternative_url(@alternative)
    click_on "Edit this alternative", match: :first

    fill_in "Content", with: @alternative.content
    check "Correct" if @alternative.correct
    fill_in "Order", with: @alternative.order
    fill_in "Question", with: @alternative.question_id
    click_on "Update Alternative"

    assert_text "Alternative was successfully updated"
    click_on "Back"
  end

  test "should destroy Alternative" do
    visit alternative_url(@alternative)
    click_on "Destroy this alternative", match: :first

    assert_text "Alternative was successfully destroyed"
  end
end
