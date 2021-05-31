class Question < ApplicationRecord

  belongs_to :plan
  has_many :answers
end
