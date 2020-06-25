Rails.application.routes.draw do
  resources :bodyparts, only: [:index]  do
	  resources :measures, only: [ :index, :create, :show]
  end

  get '/bodyparts/:name/measures'  => 'measures#index'
  get '/bodyparts/:bodypart_id/progress' => 'measures#progress'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match '*unmatched', to: 'application#route_not_found', via: :all

end
