class Squat < ApplicationRecord
  belongs_to :training

  with_options presence: true do
    validates :weight
    validates :number
  end

  validates :number, numericality: { greater_than_or_equal_to: 1, less_than: 1000 }, allow_blank: true

  validates :weight, format: { with: /\A[0-9]+\z/ }, allow_blank: true
end