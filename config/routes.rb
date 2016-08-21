Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users

  devise_for :admins, skip: [:registrations]

  # needs to be AFTER "devise_for :admins" otherwise the admin routes will be messed up
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  authenticate :user do
    resources :pay_stubs, path: '/pay-stubs', only: [:index, :show]
    resources :training_stations, path: '/training-stations', only: [:index, :show]
    resources :learning_modules, path: '/learning-modules', only: [:index]
    scope :pages do
      get 'our-philosophy' => 'pages#our_philosophy'
      get 'certification' => 'pages#certification'
    end
  end
end
