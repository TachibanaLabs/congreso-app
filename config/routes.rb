# frozen_string_literal: true

Rails.application.routes.draw do
  get '/', to: 'leads#index'
  resources :leads
end
