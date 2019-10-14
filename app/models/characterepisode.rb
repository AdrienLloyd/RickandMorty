# frozen_string_literal: true

class Characterepisode < ApplicationRecord
  belongs_to :character
  belongs_to :episode

  validates :character, :episode, presence: true
end
