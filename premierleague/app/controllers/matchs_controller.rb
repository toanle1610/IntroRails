# frozen_string_literal: true

class MatchsController < ApplicationController
  def index
    @matches = Match.all

    @page = params[:page]
    @page = 1 if @page.nil?
  end

  def show; end

  def new; end

  def edit; end
end
