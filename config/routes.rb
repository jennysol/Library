Rails.application.routes.draw do
  resources :products, only: [:new, :create, :destroy]
  root to: "products#index"
end
