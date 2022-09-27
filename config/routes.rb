Rails.application.routes.draw do
  get 'photes/index'
  get 'photes/show'
  get 'photes/new'
  get 'photes/edit'
  root to: 'homes#top'
  devise_for :users
  resource :user, except: [:new, :create, :destroy]
end
