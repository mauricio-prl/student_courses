Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'students#home'

  resources :students do
    resources :courses do
      resources :grades
    end
  end
end
