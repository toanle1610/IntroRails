# frozen_string_literal: true

class MatchDatesController < ApplicationController
  def index
    @matchdates = MatchDate.all
  end

  def show
    @matchdate = MatchDate.find(params[:matchdateId])
  end

  def new; end

  def edit; end
end
