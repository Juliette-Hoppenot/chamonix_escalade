Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'license', to: 'pages#license', as: :license
  get 'entrainements', to: 'pages#entrainements', as: :entrainements

  get 'concept', to: 'pages#concept', as: :concept

  get 'infos', to: 'pages#infos', as: :infos

  get 'public', to: 'pages#public', as: :public
  get 'business', to: 'pages#business', as: :business
  get 'salle', to: 'pages#salle', as: :salle
  get 'inscriptions/new', to: 'inscriptions#new'
  post 'inscriptions', to: 'inscription#create'
  get 'contacts/new', to: 'contacts#new'
  post 'contacts', to: 'contact#create'


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
