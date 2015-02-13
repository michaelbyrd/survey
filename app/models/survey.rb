class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :answers, through: :questions

  accepts_nest_attributes_for :questions
  accepts_nest_attributes_for :answers
end
