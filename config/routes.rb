Rails.application.routes.draw do
  get 'doses/new'
  resources :cocktails, except: [:edit, :update, :destroy] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]  
end
