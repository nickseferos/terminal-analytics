Rails.application.routes.draw do
  get 'terminal_admin/users'
  devise_for :users
  resources :crane_operators
  resources :gangs
  resources :shifts
  resources :port_calls
  resources :vessels
  get 'archive', to: 'archive#index'

  unauthenticated :user do
    root 'public#index'
    get 'about', to: 'public#about'
    get 'contact', to: 'public#contact'
  end

  authenticated :user do
    root 'vessels#index', as: "authenticated_root"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
