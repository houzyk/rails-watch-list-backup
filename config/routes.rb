Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#home'
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: :create
    resources :reviews, only: :create
    member do
      get :search
    end
  end
  resources :bookmarks, only: %i[destroy]
end
