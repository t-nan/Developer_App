class Contact < ApplicationRecord

  validates :name, presence: true 
  validates :surname, presence: true
  validates :phone, presence: true, length: {minimum: 7}
  validates :flat, presence: true ,numericality: { only_integer: true}
  
end
