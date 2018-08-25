Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :todos
  get 'todos/:id/detail' , to:'todos#show', as: :detail
end

