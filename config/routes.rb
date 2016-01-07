Retro::Application.routes.draw do
  
  devise_for :users
  root 'home#about'
  
  resources :sretros do 
	 resources :notes
    # get "retro_notes", to: "retro_notes#index"
    # get 'retro_notes/new', to: "retro_notes#new", as: :new_retro_notes
    # post 'retro_notes/create', to: "retro_notes#create", as: :create_retro_notes
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
