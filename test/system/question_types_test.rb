require "application_system_test_case"

class QuestionTypesTest < ApplicationSystemTestCase
  setup do
    @question_type = question_types(:one)
  end

  test "visiting the index" do
    visit question_types_url
    assert_selector "h1", text: "Question types"
  end

  test "should create question type" do
    visit question_types_url
    click_on "New question type"

    check "Active" if @question_type.active
    fill_in "Description", with: @question_type.description
    fill_in "Name", with: @question_type.name
    click_on "Create Question type"

    assert_text "Question type was successfully created"
    click_on "Back"
  end

  test "should update Question type" do
    visit question_type_url(@question_type)
    click_on "Edit this question type", match: :first

    check "Active" if @question_type.active
    fill_in "Description", with: @question_type.description
    fill_in "Name", with: @question_type.name
    click_on "Update Question type"

    assert_text "Question type was successfully updated"
    click_on "Back"
  end

  test "should destroy Question type" do
    visit question_type_url(@question_type)
    click_on "Destroy this question type", match: :first

    assert_text "Question type was successfully destroyed"
  end
end
