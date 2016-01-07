Retro::Application.routes.draw do
  devise_for :users
  root 'home#about'

  # Only team leads will be using these routes
  # get "retro/new", to: 'retros#new', as: :new_retro
  # post 'retro/create', to: 'retros#create', as: :create_retro

  # List all retros of a team
  resources :sretros do 
	 resources :notes
  end

end
