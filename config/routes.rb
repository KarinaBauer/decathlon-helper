Rails.application.routes.draw do
	resources :icons
  get '/edit', to: 'balisage#edit'
  post '/edit', to: 'balisage#edit'
  get '/edit', to: 'balisage#edit'
  post '/view', to: 'balisage#generate'
  get '/view', to: 'balisage#generate'
  #post '/generated', to: 'generated#preview'
  #get '/generated', to: 'generated#preview'
  root 'start#index'
end
