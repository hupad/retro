Retro::Application.routes.draw do
  
  devise_for :users
  root 'home#about'

  resources :sretros do 
	 resources :notes
     post '/notes/close', to: "notes#close", as: :retro_close

     get 'action_items'
     post 'action_items', to: "action_items#create"
     post 'action_items/update'
     get 'action_items/new'
     get 'action_items/edit'
  end

  post "search", to: "search#notes", as: :search

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :update, :delete, :show]
      post 'users/login', to: 'users#login', as: :login
      resources :teams, only: [:index]

      resources :sretros do
        resources :notes, only: [:create, :show, :index]
      end
    end
  end
end
