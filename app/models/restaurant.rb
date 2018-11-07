class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %W(chinese italian japanese french belgian)}
  # validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
end
