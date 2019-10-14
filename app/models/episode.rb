# frozen_string_literal: true

class Episode < ApplicationRecord
  has_many :characterepisodes
  has_many :characters, through: :characterepisodes

  validates :name, :episode, presence: true
end
