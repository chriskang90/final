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

end
