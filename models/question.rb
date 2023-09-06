class Question < ActiveRecord::Base
  has_many :answers
  has_one :option
  has_many :question_options
  has_many :options, :through => :question_options
  #validate :validate_options_count

  #private

  #def validate_options_count
  #  unless options.size == 3
  #    errors.add(:base, "Una pregunta debe tener exactamente 2   opciones.")
  #  end
  #end
end
