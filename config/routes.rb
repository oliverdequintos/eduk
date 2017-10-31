Rails.application.routes.draw do
  resources :subjects do
    get "delete"
  end

  root to: "subjects#index"
end
