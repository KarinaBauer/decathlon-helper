Rails.application.routes.draw do
	resources :icons
	get '/about', to: 'start#about'
	post '/edit', to: 'balisage#edit'
	get '/edit', to: 'balisage#edit'
	post '/view', to: 'balisage#generate'
	get '/view', to: 'balisage#generate'
	post '/compare', to: 'comparsion#index'
	get '/compare', to: 'comparsion#index'
	post '/table', to: 'comparsion#table'
	get '/table', to: 'comparsion#table'
	root 'start#index'
end
