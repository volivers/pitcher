class Persona < ApplicationRecord
  belongs_to :demo
  has_many :userjourneys, dependent: :destroy # ? maybe i might want to reasign a userjourney

  validates :name, presence: true
  validates :age, presence: true
  validates :location, presence: true
  validates :bio, presence: true
end
