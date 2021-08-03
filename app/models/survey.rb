class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy

  before_save(:titleize_survey)

  private
  def titleize_survey
    self.survey = self.survey.titleize
  end
end