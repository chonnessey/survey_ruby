class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy

  before_save(:titleize_name)

  private
  def titleize_name
    self.name = self.name.titleize
  end
end