class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, :inclusion => { :in => 0..5 }, :presence => { :message => " must be within 0-5" }
end
