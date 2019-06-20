Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show' # overrides the default route to 'show', after setting the 'except' in the line directly above

  # customized routes
  get 'about-me', to: 'pages#about'    #i.e map '[host]/about' to pages controller -> about action
  get 'contact', to: 'pages#contact'    #i.e map '[host]/contact' to pages controller -> contact action
  get 'tech-news', to: 'pages#tech_news'    #i.e map '[host]/contact' to pages controller -> contact action

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  mount ActionCable.server => '/cable'

  root to: 'pages#home'     # maps the homepage [host] to pages controller -> home action, and therefore to pages/home view
end
