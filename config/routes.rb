Rails.application.routes.draw do
  get 'license', to: 'pages#license', as: :license
  get 'public', to: 'pages#public', as: :public
  get 'business', to: 'pages#business', as: :business
  get 'salle', to: 'pages#salle', as: :salle
  get 'inscriptions/new', to: 'inscriptions#new'
  post 'inscriptions', to: 'inscription#create'
  get 'contacts/new', to: 'contacts#new'
  post 'contacts', to: 'contact#create'


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
