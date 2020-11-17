class Demo < ApplicationRecord
  belongs_to :user
  has_many :personas, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
