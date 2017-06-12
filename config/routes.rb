Rails.application.routes.draw do
    get 'login' =>'session#new'
    post    "login"    => "session#create"

  	get  'logout'   => 'session#destroy'

  	#delete  'logout'   => 'session#destroy'
  	
	
	resources :users
end
