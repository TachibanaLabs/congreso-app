Rails.application.routes.draw do
  resources :registrars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'leads#index'
  resources :leads
end
