# frozen_string_literal: true

Rails.application.routes.draw do
  get '/matches', to: 'matchs#index'
  get 'matchs/show'
  get 'matchs/new'
  get 'matchs/edit'
  get '/clubs', to: 'clubs#club'
  get '/clubs/:clubname', to: 'clubs#show', as: '/clubs/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
