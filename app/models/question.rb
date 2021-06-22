class Question < ApplicationRecord

  validates :author, presence: true
  validates :body, presence: true ,length: {maximum: 200}

  belongs_to :plan
  has_many :answers
  
end
