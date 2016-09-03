Rails.application.routes.draw do
  devise_for :users
  devise_for :admins, skip: [:registrations]

  # needs to be AFTER "devise_for :admins" otherwise the admin routes will be messed up
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :signup_onboarding

  authenticate :user do
    resources :training_stations, path: '/training-stations', only: [:index, :show]
    resources :learning_modules, path: '/learning-modules', only: [:index]
    get '/payroll' => 'payroll#index'
    scope :pages do
      get 'our-philosophy' => 'pages#our_philosophy'
      get 'certification' => 'pages#certification'
    end
  end

  authenticated :user do
    root to: 'pages#dashboard', as: :authenticated_root
  end

  root 'visitors#index'
end
