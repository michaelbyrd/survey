class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]

  def index
    @surveys = Survey.all
  end

  def show

  end

  def new
    @survey = Survey.new

  end

  def create

  end

  def edit

  end

  def update

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
