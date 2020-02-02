class Quote < ApplicationRecord
  belongs_to :show, dependent: :destroy
  validates :quotation, presence: true
  validates :show_id, presence: true
end
