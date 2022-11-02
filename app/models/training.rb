class Training < ApplicationRecord
  validates :day, presence: true

  belongs_to :user

  has_many :benches, dependent: :destroy
  has_many :squats, dependent: :destroy
  has_many :arms, dependent: :destroy

  accepts_nested_attributes_for :benches, allow_destroy: true
  accepts_nested_attributes_for :squats, allow_destroy: true
  accepts_nested_attributes_for :arms, allow_destroy: true
end
