class Lane < ApplicationRecord
  validates :title, presence: true
  has_many :tickets, dependent: :destroy
end
