Rails.application.routes.draw do
  get 'bottls/index'

  get 'bottls/closest', to: 'bottls#index'
  get 'bottls/closest/:latitude/:longitude/:miles', to: 'bottls#closest', constraints: {:latitude => /.*/,:longitude => /.*/}
  resources :bottls do
	  get 'closest', on: :collection
  end

#  root 'bottls#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
