# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/new'
  resources :sessions, only: [:create, :new]
  resources :posts
  get 'setup/ubuntu'
  get 'setup/zsh'
  get 'setup/ruby'
  get 'setup/vscode'
  get 'setup/gnome'
  get 'setup/index'
  get 'setup/misc'
  get 'setup/issues'
  root 'static#index'
  get 'static/index'
  get 'static/portfolio'
  get 'static/resume'
  get 'static/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
