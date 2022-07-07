class Ticket < ApplicationRecord
  validates :title, presence: true
  validates :lane_id, presence: true
  belongs_to :lane
end
