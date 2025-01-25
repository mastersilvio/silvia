require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  setup do
    @question = questions(:one)
  end

  test "visiting the index" do
    visit questions_url
    assert_selector "h1", text: "Questions"
  end

  test "should create question" do
    visit questions_url
    click_on "New question"

    check "Active" if @question.active
    fill_in "Content", with: @question.content
    fill_in "Difficulty level", with: @question.difficulty_level
    fill_in "Explanation", with: @question.explanation
    fill_in "Points", with: @question.points
    fill_in "Question type", with: @question.question_type_id
    click_on "Create Question"

    assert_text "Question was successfully created"
    click_on "Back"
  end

  test "should update Question" do
    visit question_url(@question)
    click_on "Edit this question", match: :first

    check "Active" if @question.active
    fill_in "Content", with: @question.content
    fill_in "Difficulty level", with: @question.difficulty_level
    fill_in "Explanation", with: @question.explanation
    fill_in "Points", with: @question.points
    fill_in "Question type", with: @question.question_type_id
    click_on "Update Question"

    assert_text "Question was successfully updated"
    click_on "Back"
  end

  test "should destroy Question" do
    visit question_url(@question)
    click_on "Destroy this question", match: :first

    assert_text "Question was successfully destroyed"
  end
end
