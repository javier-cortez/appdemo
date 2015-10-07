Rails.application.routes.draw do

  devise_for :users
  resources :listings do
    resources :orders, only: [:new, :create]
end

  get 'pages/about'

  get 'pages/contact'

  get 'seller' => "listings#seller"

  root 'listings#index'

end
