Rails.application.routes.draw do
  delete "products/:id", to: "products#destroy", as: :product
  post "products", to: "products#create"
  get "products/new", to: "products#new"
  root to: "products#index"
end
