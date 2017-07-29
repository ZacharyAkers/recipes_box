Rails.application.routes.draw do
  resources :recipes do
    resources :ingredients
    resources :steps
  end
end
