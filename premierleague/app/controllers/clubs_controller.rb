# frozen_string_literal: true

class ClubsController < ApplicationController
  def club
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:clubname])
  end
end
