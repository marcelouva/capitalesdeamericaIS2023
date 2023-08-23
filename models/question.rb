class Question < ActiveRecord::Base
  has_many :answers
 has_one :option
 has_many :question_options
  has_many :options, :through => :question_options
end


