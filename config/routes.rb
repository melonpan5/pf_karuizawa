Rails.application.routes.draw do

  devise_for :admins
  devise_for :customers, :controllers => {
    :registrations => 'customers/registrations'
   }
  root 'customers/homes#top'
  get '/about' => 'customers/homes#about', as: 'about'
  get '/mypage' => 'customers/customers#show', as: 'mypage'
  get 'order_plans/thanks' => 'customers/order_plans#thanks', as: 'thanks'
  get '/plan_make' => 'customers/homes#plan_make', as: 'plan_make'

  resources :contacts, only: [:create, :new] 
  namespace :customers do
    resources :clients, only: [:index, :show] 
    resources :client_plans, only: [:index, :show]
    resources :pre_plans, only: [:create, :update, :destroy,:new]
    resources :order_plans, only: [:index, :show, :new, :create, :update, :destroy]
    resources :customers, only: [:show, :edit, :create, :update, :destroy]
    post 'order_plans/new' => 'order_plans#new'
    post 'order_plans/confimation' => 'order_plans#confimation'
    get 'search/client_plans' => 'client_plans#search_client_plans'

  end


  namespace :admins do
    root 'homes#top'
    resources :plan_tags, only: [:index, :edit, :update, :destroy, :create]
    resources :item_categories, only: [:index, :edit, :update, :destroy, :create]
    resources :items, only: [:new, :create, :show, :index, :edit, :update, :destroy]
    resources :client_plans, only: [ :create, :index, :edit, :update, :destroy]
    resources :blogs
    get 'client_plans/new' => 'client_plans#new'
    get 'client_plans/client_select' => 'client_plans#client_select'
    get 'client_plans/:id' => 'client_plans#show'
    
    resources :clients, only: [:new, :create, :show, :index, :edit, :update, :destroy]
    resources :customers, only: [:index, :show, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
