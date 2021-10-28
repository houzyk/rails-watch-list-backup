class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: %i[list] }
  validates :list, uniqueness: { scope: %i[movie] }
end
