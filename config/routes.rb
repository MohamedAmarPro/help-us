Rails.application.routes.draw do
  devise_for :organizations
  devise_for :users
  root to: "pages#home"

  get "filter", to: "filter#show"
  post "filter/categories", to: "filter#categories"
  post "filter/sub_categories", to: "filter#sub_categories"
  post "filter/organizations", to: "filter#organizations"
end
