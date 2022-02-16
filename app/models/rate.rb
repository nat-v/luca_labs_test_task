class Rate < ApplicationRecord
  belongs_to :base
  validates :country_code, presence: true, length: 3
  validates :rate_value, presence: true
  validates :date, presence: true
end