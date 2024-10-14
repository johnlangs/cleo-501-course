Rails.application.routes.draw do
  resources :requirement_courses
  resources :requirements
  resources :degree_plans
  resources :course_prerequisites
  resources :courses
  resources :subjects
  resources :passwords
  resources :emails
  resources :user_interests

  # root 'users#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  root "dashboards#show"
  devise_for :users, controllers: { 
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  devise_scope :user do
    get 'users/sign_in', to: 'users/sessions#new', as: :new_user_session
    get 'users/sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
  end

  resources :user do
    member do
      get :create_profile, to: 'users#create_profile'
      patch :update_profile, to: 'users#update_profile'
    end
  end
end
