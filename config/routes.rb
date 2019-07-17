Rails.application.routes.draw do
  get 'contact/new'
  get 'contact/create'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'sites#show'
  get '/:slug', to: 'cross_pages#show'
  resources :companies, only: [:new, :create]
  resources :contacts, only: [:new, :create]

end
