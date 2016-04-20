Rails.application.routes.draw do

  root to: 'articles#index'
  get 'new_article' => 'articles#new'
  post 'new_article' => 'articles#create'

  devise_for :users, controllers: { confirmations: "confirmations" } do
    put "confirm_user", to: "confirmations#confirm_user"
    get "confirmation", to: "confirmations#show"
  end
end
