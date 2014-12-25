BarcodeReader::Application.routes.draw do
  devise_for :users
  root 'static_page#home'
  get "static_page/home"
  get "static_page/help"
  resources :items
end
