class Flat < ApplicationRecord

  has_attached_file :image, :styles => { :medium => "450x450>", :thumb => "50x50>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  belongs_to :plan



  validates :number, presence: true, numericality: { only_integer: true},  uniqueness: true
  validates :floor, presence: true, numericality: { only_integer: true}
  validates :square, presence: true, numericality: { only_integer: true}
  validates :rooms, presence: true, numericality: { only_integer: true}
  validates :entrance, presence: true
  validates :status, exclusion: [nil]
  
end
