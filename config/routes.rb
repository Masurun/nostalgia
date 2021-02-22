Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'hometowns', to: 'users/registrations#new_hometown'
    post 'hometowns', to: 'users/registrations#create_hometown'
  end
  root to: "home#index"
end
