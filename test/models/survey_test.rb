require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  def setup
    @survey = surveys(:one)
  end

  def teardown
    @survey = nil
  end

  test "I know my survey fixtures" do
    assert_equal "Survey", @survey.title
  end

  test "surveys have many questions" do
    assert @survey.questions.length > 1
  end

  test "surveys have many answers through questions" do
    assert @survey.answers.length > 1
  end
end
