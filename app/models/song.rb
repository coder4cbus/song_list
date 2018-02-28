class Song < ApplicationRecord
  validates :name, presence: true
  validates :duration, presence: true
  validates :name, uniqueness: true
  validates :duration, numericality: true

  belongs_to :artist
end
