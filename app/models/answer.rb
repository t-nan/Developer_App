class Answer < ApplicationRecord

  validates :author, presence: true ,length: {maximum: 50}
  validates :body, presence: true ,length: {maximum: 140}

  belongs_to :question
end
