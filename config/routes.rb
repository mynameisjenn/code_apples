Rails.application.routes.draw do
# STEP 1: A ROUTE triggers a controller action
# verb "/urls" => "namespace/controllers#action"
  get 'welcome/index' => 'welcome#index'
  get '/about' => 'welcome#about'
  get '/contact' => 'welcome#contact'
  get '/resume' => 'welcome#resume'

  resources :articles do 
  	resources :comments
  end
  root 'welcome#index'

end
