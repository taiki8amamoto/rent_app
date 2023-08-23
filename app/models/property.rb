class Property < ApplicationRecord
  validates :name, presence: true
  validates :rent, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :address, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 0 }
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank
end
