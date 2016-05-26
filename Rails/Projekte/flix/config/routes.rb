Rails.application.routes.draw do

  root "movies#index"
  get 'signup' => 'users#new'
  get 'signin' => 'sessions#new'

  resource :session
  resources :users
  
  resources :movies do

  	collection do
  		get 'hits'
  		get 'flops'
  		get 'upcoming'
  		get 'recent'
  	end

    resources :reviews
    resources :favorites
  end



end
