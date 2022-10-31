class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }

  has_many :trainings, dependent: :destroy
end
