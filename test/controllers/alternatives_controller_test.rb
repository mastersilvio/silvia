require "test_helper"

class AlternativesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alternative = alternatives(:one)
  end

  test "should get index" do
    get alternatives_url
    assert_response :success
  end

  test "should get new" do
    get new_alternative_url
    assert_response :success
  end

  test "should create alternative" do
    assert_difference("Alternative.count") do
      post alternatives_url, params: { alternative: { content: @alternative.content, correct: @alternative.correct, order: @alternative.order, question_id: @alternative.question_id } }
    end

    assert_redirected_to alternative_url(Alternative.last)
  end

  test "should show alternative" do
    get alternative_url(@alternative)
    assert_response :success
  end

  test "should get edit" do
    get edit_alternative_url(@alternative)
    assert_response :success
  end

  test "should update alternative" do
    patch alternative_url(@alternative), params: { alternative: { content: @alternative.content, correct: @alternative.correct, order: @alternative.order, question_id: @alternative.question_id } }
    assert_redirected_to alternative_url(@alternative)
  end

  test "should destroy alternative" do
    assert_difference("Alternative.count", -1) do
      delete alternative_url(@alternative)
    end

    assert_redirected_to alternatives_url
  end
end
