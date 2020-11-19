Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :art_pieces do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :show, :update]
  resources :pages, only:[:show, :destroy, :update]
end
