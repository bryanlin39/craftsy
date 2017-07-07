Rails.application.routes.draw do
  root :to => 'users#welcome'

  devise_for :users

  resources :users, :only => [:show]

  resources :products do
    resources :reviews, :except => [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
