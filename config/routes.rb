Rails.application.routes.draw do
  devise_for :organizations, controllers: { sessions: "organizations/sessions" }
  devise_for :users, controllers: { sessions: "users/sessions" }
  root to: "pages#home"

  get "filter", to: "filter#show"
  post "filter/categories", to: "filter#categories"
  post "filter/sub_categories", to: "filter#sub_categories"
  post "filter/organizations", to: "filter#organizations"
  post "filter/reset", to: "filter#reset"

  resources :events do 
    resources :event_participants, only: :create
  end
  resources :organizations, except: [:new, :create]

  resources :donations, only: [:create, :show] do
    resources :payments, only: :new
  end

  resources :event_participants, only: :destroy

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
