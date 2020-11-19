class Pitch < ApplicationRecord
  belongs_to :demo

  has_many :personas, dependent: :destroy

  validates :pain, presence: true
  validates :target, presence: true
  validates :solution, presence: true
end
