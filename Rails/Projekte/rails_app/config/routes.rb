Rails.application.routes.draw do
  
  root "events#index"
  get 'signup' => 'users#new'
  get 'signin' => 'sessions#new'

  resource :session
  resources :users

  resources :events do

  	collection do
  		get 'past'
  		get 'upcoming'
  		get 'free'
  	end
    resources :registrations
    resources :likes
  end



end
