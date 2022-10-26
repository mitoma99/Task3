Rails.application.routes.draw do

  #get '' => 'homes#top'
  root to: 'homes#top'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 resources :books, only: [:new,:create,:index,:show,:edit,:update,:destroy]
 resources :users, only: [:index,:show,:edit,:update]

 get 'home/about' => 'homes#about'

end
