Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'hometowns', to: 'users/registrations#new_hometown'
    post 'hometowns', to: 'users/registrations#create_hometown'
  end
  root to: "home#index"
  get "about" => "home#about"
  resources :posts do 
    collection do
      get 'search'
    end
  end
  resources :records do 
    collection do
      get 'search'
    end
  end
  resources :users,only:[:show]
end
