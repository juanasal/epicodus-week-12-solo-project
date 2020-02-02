class Quote < ApplicationRecord
  belongs_to :show, dependent: :destroy
end
