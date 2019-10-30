# frozen_string_literal: true

class CharactersController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @characters = pagy(Character.order(:id))
  end

  def show
    @character = Character.find(params[:id])
  end
end
