class Base < ApplicationRecord
  has_many :rate
  validates :country_code, presence: true, length: { is: 3 }
end