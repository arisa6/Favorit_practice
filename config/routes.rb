Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  resource :user, except: [:new, :create, :destroy]
  resources :photes do
    resource :favorits, only: [:create, :destroy]
  end
end
