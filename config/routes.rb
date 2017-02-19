Rails.application.routes.draw do

	resources :icons

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
