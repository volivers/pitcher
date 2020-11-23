class Userjourney < ApplicationRecord
  belongs_to :demo
  belongs_to :persona
  has_many :steps, dependent: :destroy
end
