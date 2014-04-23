BogApp::Application.routes.draw do
    root to: 'bog#index'
  
    get '/bog', to: 'bog#index'

    get '/bog/new', to: 'bog#new'

    post '/bog', to: 'bog#create'
end
