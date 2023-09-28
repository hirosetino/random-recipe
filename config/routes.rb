Rails.application.routes.draw do
  devise_for :users
    root 'recipes#index'
    resources :recipes do
      collection do
        get 'search'
      end
      resource :favorites, only: [:create, :destroy]
    end
    resources :users, only: :show
end
