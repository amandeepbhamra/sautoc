Sautoc::Application.routes.draw do
    
    mount Soulmate::Server, :at => "/autocomplete"
    
    resources :vendors
    resources :categories

    root to: 'pages#index'

end