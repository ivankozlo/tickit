class Ticket < ApplicationRecord
  validates :title, presence: true
  belongs_to :lane
end
