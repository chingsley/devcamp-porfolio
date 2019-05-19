Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show' # overrides the default route to 'show', after setting the 'except' in the line directly above

  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
  
  # customized routes
  get 'about-me', to: 'pages#about'    #i.e map '[host]/about' to pages controller -> about action
  get 'contact', to: 'pages#contact'    #i.e map '[host]/contact' to pages controller -> contact action
  root to: 'pages#home'     # maps the homepage [host] to pages controller -> home action, and therefore to pages/home view
end
