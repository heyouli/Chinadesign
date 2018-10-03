Rails.application.routes.draw do
  get 'simple_pages/design'
  get 'simple_pages/photography'
  get 'simple_pages/recipes'
  resources :posts
  get 'simple_pages/about'
  get 'simple_pages/posts'
  get 'simple_pages/hireme'
  get 'simple_pages/index'
  get 'simple_pages/contact'
  root 'simple_pages#landing_page'
  post 'simple_pages/thank_you'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
