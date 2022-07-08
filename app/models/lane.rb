class Lane < ApplicationRecord
  validates :title, presence: true
  validates :position, presence: true
  has_many :tickets, dependent: :destroy
end
