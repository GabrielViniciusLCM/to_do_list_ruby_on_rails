Rails.application.routes.draw do
  resources :listas do
    resources :itens, only: [:create, :destroy]
  end

  root "listas#index"  # será página inicial com todas as listas
end