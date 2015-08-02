class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy, :take_survey, :submit_answers]

  def take_survey

  end

  def submit_answers
    @survey.questions.each do |q|
      Answer.create!(question_id: q.id , text: params[:answers][q.id])
    end
    redirect_to @survey
  end

  def index
    @surveys = Survey.all
  end

  def show
  end

  def new
    @survey = Survey.new
    @survey.questions.build
  end

  def create
    survey = Survey.new(survey_params)
    if survey.save
      redirect_to survey
    else
      render 'new'
    end
  end

  def edit
    @survey.questions.build
  end

  def update
    if @survey.update(survey_params)
      redirect_to @survey
    else
      render 'edit'
    end
  end

  def destroy
  end

  private def survey_params
    params.require(:survey).permit(:title,
                                   questions_attributes: [:id, :text, :position, :_destroy])
  end

  private def set_survey
    @survey = Survey.find(params[:id])
  end
end
