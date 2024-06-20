Rails.application.routes.draw do
  devise_for :admin, controllers: {
    sessions: 'admin/sessions'
  }
  root 'pages#home'
  get 'pages/users'
  get 'pages/admin'
  
  get 'list/index'
  resources :tasks
  resources :projects
  resources :projects, only: [:index, :show, :new, :create] do
    resources :tasks, only: [:create]
  end
  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  get 'home/index'
  get 'list/search'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  namespace :admin do
    get 'dashboard/index'
    get 'dashboard', to: 'dashboard#index'
  end
  resources :employees
  resources :teams
  resources :managers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
