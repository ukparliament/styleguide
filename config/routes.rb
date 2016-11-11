Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'styleguide/index'
  root to: 'styleguide#index'

  get '/dev' , to: 'pages#dev', as: 'dev'

end
