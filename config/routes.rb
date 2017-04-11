Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :courses

  resources :lessons do
    resources :units
  end

  root "courses#index"

end
