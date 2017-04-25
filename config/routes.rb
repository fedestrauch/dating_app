Rails.application.routes.draw do
  devise_for :date_apps
  resources :date_apps
  root 'date_apps#index'
  get '/match', to: 'date_apps#match'
  get '/profile', to: 'date_apps#profile'

  post '/add_dislike' => 'date_apps#add_dislike'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
