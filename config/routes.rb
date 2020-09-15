Rails.application.routes.draw do
  get '/' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  
  
  Rails.application.routes.draw do
  root 'home#top'
end
  
  
  
#   > app.root_path
# => "/"

# > app.root_url
# => "http://www.example.com/"

# > app.url_for(controller: 'home', action: 'index')
# => "http://www.example.com/"

end
