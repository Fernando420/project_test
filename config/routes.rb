Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "/users" => "home#users"
  post "/users" => "home#users"

  resources :results, only: [:index] do
    collection {get :winner_users}
  end
end
