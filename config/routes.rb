Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :subjects do
    get "delete"
  end

  root to: "static_pages#index"
end
