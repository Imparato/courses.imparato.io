Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'sites#show'
  get '/:slug', to: 'cross_pages#show'
  resources :company_creations, only: [:new, :create]
  resources :contact_admins, only: [:new, :create]
end
