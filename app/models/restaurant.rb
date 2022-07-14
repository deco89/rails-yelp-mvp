class Restaurant < ApplicationRecord
  # def initialize(name, address, phone_number, category)
  #   @name = name
  #   @address = address
  #   @phone_number = phone_number
  #   @category = category
  # end
  CATEGORY = %w[chinese italian japanese frence belgian].freeze

  validates :name, presence: true, length: { maximum: 50 }
  validates :address, presence: true, length: { maximum: 300 }
  validates :phone_number, phone: true
  validates :category, inclusion: { in: CATEGORY }
end
