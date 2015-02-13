require 'test_helper'

class AnswerTest < ActiveSupport::TestCase

  def setup
    @a1 = answers(:one)
    @a2 = answers(:two)
    @a3 = answers(:three)
    @a4 = answers(:four)
    @a5 = answers(:five)
  end

  def teardown
    @a1 = nil
    @a2 = nil
    @a3 = nil
    @a4 = nil
    @a5 = nil
  end

  test "I know my answer fixtures" do
    assert_equal 'yes', @a1.text
    assert_equal 'no',  @a2.text

    assert_equal 'red',   @a3.text
    assert_equal 'blue',  @a4.text
    assert_equal 'green', @a5.text
  end

  test "answers belong to a question" do
    q1 = "Are you indecisive?"
    q2 = "What is your favorite color?"
    assert_equal q1, @a1.question.text
    assert_equal q1, @a2.question.text

    assert_equal q2, @a3.question.text
    assert_equal q2, @a4.question.text
    assert_equal q2, @a5.question.text
  end

  test "answers know their survey" do
    name = "Survey"
    assert @a1.survey
    assert name, @a1.survey.title
    assert name, @a2.survey.title
    assert name, @a3.survey.title
    assert name, @a4.survey.title
    assert name, @a5.survey.title
  end

end
