Rails.application.routes.draw do


  root 'festivals#index'

  #########################################################
  # The "Golden 7" for accessing the "festivals" resource

  get '/festivals/new' => 'festivals#new', as: 'new_festival'
  post '/festivals' => 'festivals#create', as: 'festivals'

  get '/festivals' => 'festivals#index'
  get '/festivals/:id' => 'festivals#show', as: 'festival'

  get '/festivals/:id/edit' => 'festivals#edit', as: 'edit_festival'
  patch '/festivals/:id' => 'festivals#update'

  delete '/festivals/:id' => 'festivals#destroy'

  #########################################################
  # Create, read, and update for "locations" resource. NO DELETE.
  # We do NOT allow locations to be deleted because Festivals need locations.

  get '/locations/new' => 'locations#new', as: 'new_locations'
  post '/locations' => 'locations#create', as: 'locations'

  get '/locations' => 'locations#index'
  get '/locations/:id' => 'locations#show', as: 'location'

  get '/locations/:id/edit' => 'locations#edit', as: 'edit_location'
  patch '/locations/:id' => 'locations#update'

  #########################################################
  # Create, read, and update for "genres" resource. NO DELETE.
  # We do NOT allow genres to be deleted because Festivals need genres.

  get '/genres/new' => 'genres#new', as: 'new_genres'
  post '/genres' => 'genres#create', as: 'genres'

  get '/genres' => 'genres#index'
  get '/genres/:id' => 'genres#show', as: 'genre'

  get '/genres/:id/edit' => 'genres#edit', as: 'edit_genre'
  patch '/genres/:id' => 'genres#update'

  #########################################################
  # Sign Up, Sign In, and Sign Out

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'

  delete '/sessions' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'

  #########################################################
  # Only delete action for "cookies" resource for browsing history
  delete '/cookies' => 'cookies#destroy'

end
