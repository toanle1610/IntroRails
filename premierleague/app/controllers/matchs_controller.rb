# frozen_string_literal: true

class MatchsController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:refereeId])
  end

  def new; end

  def edit; end
end
