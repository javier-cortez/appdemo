Rails.application.routes.draw do

  devise_for :users
  resources :listings do
<<<<<<< HEAD
  	resources :orders, only: [:new, :create]
  end
=======
    resources :orders, only: [:new, :create]
end
>>>>>>> dccbe76fb942f1b5ec3053981ee83c96b04ddbeb

  get 'pages/about'

  get 'pages/contact'

  get 'seller' => "listings#seller"

  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"

  root 'listings#index'

end
