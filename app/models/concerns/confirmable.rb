module Confirmable
  extend ActiveSupport::Concern

  included do
    validates_acceptance_of :confirming
    after_validation :check_confirming
  end

  def confirming?
    confirming == '1'
  end

  def check_confirming
    errors.delete(:confirming)
    self.confirming = errors.empty? ? '1' : ''
  end
end
