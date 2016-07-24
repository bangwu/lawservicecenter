Rails.application.routes.draw do

  get 'consults', to: 'consult#index'

  get 'consults/:id', to: 'consult#show', as: 'consult_show'

  get 'consult/complain'

  get 'consult/feedback'

  get 'consult/flow'

  get 'consult/justice'

  get 'consult/register'

  get 'consult/law'

  post 'consult/create'

  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/consults/:consult_id/comments', to: 'comments#create', as: 'consult_comments'

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords'
  }
end
