Rails.application.routes.draw do
  resources :messages
  mount ActionCable.server => '/cable'
  # update to this once everything is working
  # resources :messages, only: [:index,:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
