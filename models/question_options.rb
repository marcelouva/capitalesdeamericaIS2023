class QuestionOption < ActiveRecord::Base
  belongs_to :question
  belongs_to :option
end
