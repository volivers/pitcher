class Step < ApplicationRecord
  belongs_to :userjourney

  validates :standpoint, presence: true
  validates :viewpoint, presence: true
  validates :actionpoint, presence: true
end
