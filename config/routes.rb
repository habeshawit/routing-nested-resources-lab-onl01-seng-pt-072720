Rails.application.routes.draw do
  resources :artists
  resources :songs

  resources :artist, only: [:show] do
    resources :songs, only: [:show, :index]
  end
end
