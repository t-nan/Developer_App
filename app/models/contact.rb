class Contact < ApplicationRecord

  validates :name, presence: true ,length: {maximum: 50}
  validates :surname, presence: true ,length: {maximum: 50}
  validates :phone, presence: true, length: {minimum: 7,maximum: 15}
  validates :flat, presence: true ,numericality: { only_integer: true}
  
end