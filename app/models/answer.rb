class Answer < ActiveRecord::Base
  belongs_to :question


  def survey
    question.survey
  end

end
