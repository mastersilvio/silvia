require "test_helper"

class QuestionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_type = question_types(:one)
  end

  test "should get index" do
    get question_types_url
    assert_response :success
  end

  test "should get new" do
    get new_question_type_url
    assert_response :success
  end

  test "should create question_type" do
    assert_difference("QuestionType.count") do
      post question_types_url, params: { question_type: { active: @question_type.active, description: @question_type.description, name: @question_type.name } }
    end

    assert_redirected_to question_type_url(QuestionType.last)
  end

  test "should show question_type" do
    get question_type_url(@question_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_type_url(@question_type)
    assert_response :success
  end

  test "should update question_type" do
    patch question_type_url(@question_type), params: { question_type: { active: @question_type.active, description: @question_type.description, name: @question_type.name } }
    assert_redirected_to question_type_url(@question_type)
  end

  test "should destroy question_type" do
    assert_difference("QuestionType.count", -1) do
      delete question_type_url(@question_type)
    end

    assert_redirected_to question_types_url
  end
end
