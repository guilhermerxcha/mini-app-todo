Rails.application.routes.draw do
  get 'favorites/update'
  devise_for :users

  resources :todos do
    resources :items
    member do
      patch :complete
    end
  end
  root "todos#index"
end
