# frozen_string_literal: true

class Episode < ApplicationRecord
  has_many :character_episodes
  has_many :characters, through: :character_episodes

  validates :name, :episode_name, presence: true
end
