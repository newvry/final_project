Rails.application.routes.draw do
  resources :events
  resources :activities
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  resources :users do
    collection do
      get :trainees
    end
  end
  
  resources :courses

  resources :lessons do
    resources :units do
      get :previous_unit
      get :next_unit
      get :previous_lesson
      get :next_lesson
    end
  end

  namespace :admin do
    resources :users
    resources :courses
    resources :lessons do
      resources :units
    end
  end

  root "courses#index"
end
