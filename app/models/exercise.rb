class Exercise < ApplicationRecord
  validates :category, presence: true
  has_many :routines
end
