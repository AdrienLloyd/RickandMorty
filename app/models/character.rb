# frozen_string_literal: true

class Character < ApplicationRecord
  has_one :favourite_food
  has_many :characterepisodes
  has_many :episodes, through: :characterepisodes

  validates :name, :image, presence: true
end
