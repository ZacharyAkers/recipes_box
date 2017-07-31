Rails.application.routes.draw do
  resources :users, except: [:index, :destroy]
  get "/sessions" => "sessions#destroy"
  resources :sessions, only: [:new, :create]
  
  resources :recipes do
    resources :ingredients
    resources :steps
  end
  root "recipes#index"
end
