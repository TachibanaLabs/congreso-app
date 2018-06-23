Rails.application.routes.draw do
  get '/', to: 'leads#index'
  resources :leads
end
