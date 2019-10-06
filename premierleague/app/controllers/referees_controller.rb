# frozen_string_literal: true

class RefereesController < ApplicationController
  def index; end

  def show
    @referee = Referee.find(params[:refereeId])
  end

  def new; end

  def edit; end
end
