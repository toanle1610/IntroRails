# frozen_string_literal: true

class MatchsController < ApplicationController
  def index
    @matches = Match.all

    @page = params[:page]
    @page = 1 if @page.nil?
  end

  def show
    @clubsearch = params[:q]
    @referee = params[:referee]
    @count = 0
    if !@clubsearch.nil? && (@referee != 0)
      @searchmatches = Match.where('HomeTeam like ? And AwayTeam like ?',
                                   "%#{@clubsearch}%", "%#{@clubsearch}%")
      @count = @searchmatches.count
    end
  end

  def new; end

  def edit; end
end
