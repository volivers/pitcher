class Pitch < ApplicationRecord
  belongs_to :demo

  validates :pain, presence: true
  validates :target, presence: true
  validates :solution, presence: true
end
