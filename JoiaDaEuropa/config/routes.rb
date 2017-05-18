Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get 'home/aboutus'
  get 'home/mission'
  get 'home/contacts'
  get 'home/news'
  get 'home/externallinks'


  get '/profile/index'

  get '/profile/edit'
  post '/profile/save_user_profile'

  get '/client_area/index'
  get '/client_area/new_order'
  get '/client_area/order_review'
  get '/client_area/pending_orders'
  get '/client_area/completed_orders'
  get '/client_area/canceled_orders'

  get '/client_area/new_order'
  post '/new_order/save_new_order'

  root to: 'home#index'
end
