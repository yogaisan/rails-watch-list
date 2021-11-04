Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'lists#index'
  resources :lists, only: %i[create index new show destroy] do
    resources :bookmarks, only: %i[new create destroy]
  end
end
