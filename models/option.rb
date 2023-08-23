class Option < ActiveRecord::Base
  has_many :answers
 belongs_to :question
 has_many :question_options
 has_many :questions, :through => :question_options
end

