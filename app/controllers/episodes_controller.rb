# frozen_string_literal: true

class EpisodesController < ApplicationController
  def index
    @episodes = Episode.order(:id)
  end

  def show;
    @episode = Episode.find(params[:id])
  end
end
