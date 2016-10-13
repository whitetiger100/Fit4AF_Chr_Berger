Rails.application.routes.draw do
  #root "static_pages#start"
  root "events#index"

  get 'start' => 'static_pages#start'
  get 'signup' => 'users#new'
  get 'signin' => 'sessions#new'

  resources :calendars
  resources :categories
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
