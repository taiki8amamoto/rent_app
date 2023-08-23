class Station < ApplicationRecord
  belongs_to :property
  validates :minute, numericality: { only_integer: true, greater_than: 0, allow_nil: true }
end
