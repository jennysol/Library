Rails.application.routes.draw do
  get "products/new", to: "products#new"
  root to: "products#index"
end
