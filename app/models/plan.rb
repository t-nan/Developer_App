class Plan < ApplicationRecord

  validates :kind, presence: true, numericality: { only_integer: true},  uniqueness: true
  validates :rooms, presence: true, numericality: { only_integer: true}

  has_attached_file :image, :styles => { :medium => "400x400>", :thumb => "130x130>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
  has_many :flats
  has_many :questions
end
