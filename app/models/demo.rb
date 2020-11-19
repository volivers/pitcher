class Demo < ApplicationRecord
  belongs_to :user
  has_many :personas, dependent: :destroy
  has_many :pitches, dependent: :destroy
  attr_writer :current_step

  validates :name, presence: true, uniqueness: true

end
