Rails.application.routes.draw do
  resources :bodyparts, only: [:index] do
	  resources :measures, only: [ :index, :create, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
