Rails.application.routes.draw do
  get "products/search", to: "products#search", as: :search_product
  resources :products, only: [:new, :create, :destroy]
  root to: "products#index"
end
