Rails.application.routes.draw do

	resources :icons
	get '/api/icons/select', to: 'icons#select'

	resources :pictures
	get '/api/pictures/select', to: 'pictures#select'

	get '/about', to: 'start#about'

	post '/balisage/create', to: 'balisage#create'
	get '/balisage/create', to: 'balisage#create'

	post '/balisage/print', to: 'balisage#print'
	get '/balisage/print', to: 'balisage#print'

	post '/compare/create', to: 'comparsion#create'
	get '/compare/create', to: 'comparsion#create'

	post '/compare/print', to: 'comparsion#print'
	get '/compare/print', to: 'comparsion#print'

	root 'start#index'

end
