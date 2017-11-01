Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :subjects do
    get "delete"
  end

  resources :teachers do
    get "delete"
  end

  resources :teacher_subjects
  resources :student_subjects do
    get 'available_professor'
  end

  resources :ratings

  root to: "static_pages#index"
end
