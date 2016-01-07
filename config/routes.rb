Retro::Application.routes.draw do
  devise_for :users
  root 'home#about'

  # Only team leads will be using these routes
  # get "retro/new", to: 'retros#new', as: :new_retro
  # post 'retro/create', to: 'retros#create', as: :create_retro

  # List all retros of a team
  resources :sretros do 
<<<<<<< HEAD
	 resources :notes
=======
    get "retro_notes", to: "retro_notes#index"
    get 'retro_notes/new', to: "retro_notes#new", as: :new_retro_notes
    post 'retro_notes/create', to: "retro_notes#create", as: :create_retro_notes
>>>>>>> daf2c1e5c7090819b5ed37ac7ef0a42d98d87b3c
  end

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :update, :delete, :show]
      resources :teams, only: [:index]

      resources :sretros do
        post 'retro_notes/create', to: "retro_notes#create", as: :create_retro_notes
      end
    end
  end
end
