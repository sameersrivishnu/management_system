Rails.application.routes.draw do
  root to: "products#index"		
  resources :ware_houses
  resources :products
  resources :product_ware_houses

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
