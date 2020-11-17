class Persona < ApplicationRecord
  belongs_to :demo

  validates :name, presence: true
  validates :age, presence: true
  validates :location, presence: true
  validates :bio, presence: true
end
