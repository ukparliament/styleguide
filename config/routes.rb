Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'styleguide/index'
  root to: 'styleguide#index'

  # get '/components' , to: 'pages#components', as: 'components'
  get '/components', to: redirect('/components/header', status: 302)
  get '/design', to: redirect('/design/colours', status: 302)
  get '/elements', to: redirect('/elements/typography', status: 302)
end
