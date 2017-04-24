Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  resources :users
  resources :courses

  resources :lessons do
    resources :units
  end

  namespace :admin do
    resources :courses
    resources :lessons do
      resources :units
    end
  end

  root "courses#index"
end
