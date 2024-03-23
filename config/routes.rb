Rails.application.routes.draw do
  get 'pages/about'
  root "pages#homepage"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # このコードは`ideas`コントローラの全アクションに対する標準的なルーティングを提供します
resources :ideas

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
