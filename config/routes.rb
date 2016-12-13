Rails.application.routes.draw do
  root 'welcome#index'

  get 'admin_panel' => 'welcome#admin_panel'

  get 'info_car' => 'welcome#info_car'

  post 'update_iframe' => 'welcome#update_iframe'
  resources :newsfeeds
  resources :contacts
  devise_for :users
  resources :makes
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
