Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'

  resources :lists, only: [:create, :index, :new, :show, :destroy] do
    resources :bookmarks, only: [ :new, :create, :destroy ]
  end
end
