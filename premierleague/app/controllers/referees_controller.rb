# frozen_string_literal: true

class RefereesController < ApplicationController
  def index
    @referees = Referee.all
  end

  def show
    @referee = Referee.find(params[:refereeId])
  end

  def refereematch
    @referee = Referee.find(params[:refereeId])
    @matches = @referee.matchs
  end

  def new; end

  def edit; end
end
