Rails.application.routes.draw do
  resources :school_classes, only: [:new, :show, :index, :create, :edit, :update]
  resources :students, only: [:new, :show, :index, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
