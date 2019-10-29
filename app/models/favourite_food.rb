class FavouriteFood < ApplicationRecord
  belongs_to :character

  validates :name, :description, presence: true
end
