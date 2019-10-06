# frozen_string_literal: true

class MatchsController < ApplicationController
  def index
    @matches = Match.all
  end

  def show; end

  def new; end

  def edit; end
end
