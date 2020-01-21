Rails.application.routes.draw do
  resources :gangs
  resources :shifts
  resources :port_calls
  resources :vessels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
