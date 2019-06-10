Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :school_classes, only: [:show, :index, :new, :edit, :create, :update]

  resources :students, only: [:show, :index, :new, :edit, :create, :update]

end
