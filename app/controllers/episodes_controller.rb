# frozen_string_literal: true

class EpisodesController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @episodes = pagy(Episode.order(:id))
  end

  def show;
    @episode = Episode.find(params[:id])
  end
end
