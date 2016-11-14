Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'styleguide/index'
  root to: 'styleguide#index'

  # get '/components' , to: 'pages#components', as: 'components'

  get '/components' => redirect('/components/header', status: 302)
  get '/elements' => redirect('/elements/typography', status: 302)
end
