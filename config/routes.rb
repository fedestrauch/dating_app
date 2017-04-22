Rails.application.routes.draw do
  resources :date_apps
  root 'date_apps#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
