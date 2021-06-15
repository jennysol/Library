Rails.application.routes.draw do
  post "products", to: "products#create"
  get "products/new", to: "products#new"
  root to: "products#index"
end
