class Question < ApplicationRecord

  validates :author, presence: true
  validates :body, presence: true

  belongs_to :plan
  has_many :answers
  
end
