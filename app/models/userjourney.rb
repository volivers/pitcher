class Userjourney < ApplicationRecord
  belongs_to :demo
  belongs_to :persona
  has_many :steps, dependent: :destroy

  validates :name, presence: true
  validates_uniqueness_of :name, scope: :persona_id
end
