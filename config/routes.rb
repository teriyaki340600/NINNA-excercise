Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'photos#top'
  resources :photos, only: [:top, :new, :create, :index, :show, :destroy, :edit] do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end

  resources :cameras, only: [:show] do
    resource :reviews, only: [:create, :destroy]
  end

  resources :magnifiers, only: [:show] do
    resource :reviews, only: [:create, :destroy]
  end

  resources :users, only: [:show, :update, :edit, :destroy]

  root 'photos#top'

end
