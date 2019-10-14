# frozen_string_literal: true

class Character < ApplicationRecord
  belongs_to :favourite_food
  has_many :characterepisodes
  has_many :episodes, through: :characterepisodes

  validates :name, :image, presence: true
end
