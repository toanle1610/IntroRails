# frozen_string_literal: true

class ClubsController < ApplicationController
  def club
    @clubs = Club.all

    @page = params[:page]
    @page = 1 if @page.nil?
  end

  def show
    @club = Club.find(params[:clubname])
  end
end
