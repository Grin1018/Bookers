Rails.application.routes.draw do
 root to: 'homes#top'
  get 'books' => 'books#index'
  get 'books/:id/edit' => 'books#edit', as: 'edit_books'
  patch 'books/:id' => 'books#update', as: 'update_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books 
end
