Fmm1::Application.routes.draw do
  root to: "static_pages#index"

  resources :sessions,  only: [:new, :create, :destroy]
  namespace :admin do

    resources :positions
    resources :users
    resources :teams
    resources :skills
    resources :projects
  end
  resources :users
  resources :teams
  resources :projects
  match '/help', to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about' , via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  match '/signin', to: 'sessions#new' , via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
end
