Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'photos#top'
  resources :photos, only: [:top, :new, :create, :index, :show, :destroy, :edit] do
    resource :comments, only: [:create]
    resource :likes, only: [:create, :destroy]
  end
  root 'photos#top'

end
