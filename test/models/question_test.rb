require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  def setup
    @q1 = questions(:one)
    @q2 = questions(:two)
  end

  def teardown
    @q1 = nil
    @q2 = nil
  end

  test "I know my questions fixtures" do
    assert_equal 'Are you indecisive?', @q1.text
    assert_equal 'What is your favorite color?', @q2.text
  end

end
