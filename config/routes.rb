Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :merchants, only: %i[index show] do
    resources :items, only: %i[index show]
  end
end
