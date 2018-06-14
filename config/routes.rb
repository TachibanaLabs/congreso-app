Rails.application.routes.draw do
  get '/', to: 'pres#index'
  resources :pres
end
