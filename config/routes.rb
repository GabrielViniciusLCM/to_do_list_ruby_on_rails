Rails.application.routes.draw do
  resources :lists do
    resources :items, only: [:create, :destroy]
  end
  root "lists#index"
end