Rails.application.routes.draw do

  devise_for :admins
  devise_for :customers
  root 'customers/homes#top'
  get '/about' => 'customer/homes#about', as: 'about'

  
  namespace :customers do
    resources :clients, only: [:index, :show]
    resources :client_plans, only: [:index, :show]
    resources :order_plans, only: [:index, :show, :new, :create, :update, :destroy]
    resources :customers, only: [:show, :edit, :create, :update, :destroy]
    get 'order_plans/thanks' => 'order_plans#thanks'
  end


  namespace :admins do
    root 'homes#top'
    resources :plan_tags, only: [:index, :edit, :update, :destroy, :create]
    resources :item_categories, only: [:index, :edit, :update, :destroy, :create]
    resources :items, only: [:new, :create, :show, :index, :edit, :update, :destroy]
    resources :client_plans, only: [ :create, :index, :edit, :update, :destroy]
    post 'client_plans/new' => 'client_plans#new'
    get 'client_plans/client_select' => 'client_plans#client_select'
    get 'client_plans/:id' => 'client_plans#show'
    resources :clients, only: [:new, :create, :show, :index, :edit, :update, :destroy]
    resources :customers, only: [:index, :show, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
