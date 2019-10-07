# frozen_string_literal: true

class MatchDatesController < ApplicationController
  def index
    @matchdates = MatchDate.all

    @page = params[:page]
    @page = 1 if @page.nil?
  end

  def show
    @matchdate = MatchDate.find(params[:matchdateId])
  end

  def new; end

  def edit; end
end
