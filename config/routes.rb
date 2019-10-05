Rails.application.routes.draw do
  # get 'songs/edit'

  # get 'songs/new'

  # get 'songs/show'

  # get 'songs/index'

  # get 'genres/edit'

  # get 'genres/new'

  # get 'genres/show'

  # get 'artists/edit'

  # get 'artists/new'

  # get 'artists/show'
  resources :genres

  resources :artists
  
  resources :songs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
