Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "battles#index"
resources :index, only: [:index]
resources :users, only: [:edit, :update]
resources :battles, only: [:index, :new, :create, :destroy] do
  collection do
    get 'search'
  end
end
end
