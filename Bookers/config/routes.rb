Rails.application.routes.draw do
  get 'books/new'
  get 'books' => 'books#index', as: 'index_books'
  post 'books' => 'books#create'
  get 'books/show' => 'books#show', as: 'show_books'
  get 'books/edit'
  get '/' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'book/:id' => 'books#show'
  delete 'books/:id' => 'books#destroy' , as: 'destroy_book'
end
