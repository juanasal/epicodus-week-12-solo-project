class Quote < ApplicationRecord
  belongs_to :show
  validates :quotation, presence: true
  validates :show_id, presence: true
end
