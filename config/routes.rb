Rails.application.routes.draw do
  get "products/:id/delete", to: "products#destroy"
  post "products", to: "products#create"
  get "products/new", to: "products#new"
  root to: "products#index"
end
