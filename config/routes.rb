Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root to: 'styleguide#index'
  root to: 'components#header'

  #    HTTP verb 'Path',      'Controller#Action',    'Path'
  get '/components',            to: redirect('/components/header', status: 302)
  get '/components/breadcrumb', to: 'components#breadcrumb'
  get '/components/footer',     to: 'components#footer'
  get '/components/header',     to: 'components#header'
  get '/components/panel',      to: 'components#panel'

  get '/design',            to: redirect('/design/colours', status: 302)
  get '/design/colours',    to: 'design#colours'
  get '/design/typography', to: 'design#typography'

  get '/elements',        to: redirect('/elements/table', status: 302)
  get '/elements/lists',  to: 'elements#lists'
  get '/elements/table',  to: 'elements#table'

  get '/templates',                     to: redirect('/templates/member_profile_hoc', status: 302)
  get '/templates/member_profile_hoc',  to: 'templates#member_profile_hoc'
  get '/templates/member_profile_hol',  to: 'templates#member_profile_hol'

end
