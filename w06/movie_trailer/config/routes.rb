Rails.application.routes.draw do

  root "movies#index"

  resources :trailers

  resources :characters

  resources :movies
end
