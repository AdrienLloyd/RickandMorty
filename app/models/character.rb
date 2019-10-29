# frozen_string_literal: true

class Character < ApplicationRecord
  has_one :favourite_food
  has_many :character_episodes
  has_many :episodes, through: :character_episodes

  validates :name, :image, presence: true
end
