class Artist < ApplicationRecord
  # validates :name, presence: true
  # validates :name, uniqueness: true
has_many :songs, dependent: :destroy
end
