# frozen_string_literal: true

class MatchsController < ApplicationController
  def index
    @matches = Match.all

    @page = params[:page]
    @page = 1 if @page.nil?
  end

  def show
    @clubsearch = params[:q]
    @count = 0
    @searchmatches = nil

    if !@clubsearch.empty?
      @searchmatches = Match.where('HomeTeam like ? Or AwayTeam like ?',
                                   "%#{@clubsearch}%", "%#{@clubsearch}%")
      @count = @searchmatches.count
    end
  end

  def new; end

  def edit; end
end
