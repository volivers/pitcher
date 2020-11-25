class Userjourney < ApplicationRecord
  belongs_to :demo
  belongs_to :persona
  has_many :steps, dependent: :destroy, inverse_of: :userjourney
  accepts_nested_attributes_for :steps, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true
  validates_uniqueness_of :name, scope: :persona_id
end
