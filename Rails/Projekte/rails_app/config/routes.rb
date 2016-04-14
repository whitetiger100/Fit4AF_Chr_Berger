Rails.application.routes.draw do
  root "events#index"
  get 'signup' => 'users#new'
  get 'signin' => 'sessions#new'

  resource :session
  resources :users

  resources :events do
    resources :registrations
  end



end
