Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'lists#index'
  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
end
