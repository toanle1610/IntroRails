# frozen_string_literal: true

Rails.application.routes.draw do
  get '/about', to: 'about#about'
  get '/matchdates', to: 'match_dates#index'
  get 'match_dates/show'
  get 'match_dates/new'
  get 'match_dates/edit'
  get '/referees', to: 'referees#index'
  get '/referees/:refereeId', to: 'referees#show', as: '/referees/show'
  get 'referees/new'
  get 'referees/edit'
  get '/matches', to: 'matchs#index'
  get 'matchs/show'
  get 'matchs/new'
  get 'matchs/edit'
  get '/clubs', to: 'clubs#club'
  get '/clubs/:clubname', to: 'clubs#show', as: '/clubs/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
