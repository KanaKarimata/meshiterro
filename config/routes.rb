Rails.application.routes.draw do
  # get 'users/show'
  # get 'users/edit'
  # get 'postimages/new'
  # get 'postimages/index'
  # get 'postimages/show'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:new, :create, :index, :show,:destroy, :edit]
  devise_for :users
  root to: "homes#top"
  get "homes/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
