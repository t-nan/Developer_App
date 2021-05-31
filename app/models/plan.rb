class Plan < ApplicationRecord

  has_attached_file :image, :styles => { :medium => "450x450>", :thumb => "130x130>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
  has_many :flats
  has_many :questions
end
