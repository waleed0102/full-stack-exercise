# frozen_string_literal: true

Rails.application.routes.draw do
  resources :applicants
  resources :projects
  resources :funds

  root 'applicants#index'
end
