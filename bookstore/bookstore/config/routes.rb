Rails.application.routes.draw do
  root 'book#index'
  get "libros/todos", to: "book#index"

  get "libros/nuevo", to:"book#new"
  post "libros/crear", to: "book#create"

  get "libros/mostrar/:id", to:"book#show"
  post "libros/borrar/:id", to:"book#delete"
  
  get "libros/edit/:id", to:"book#edit"
  post "libros/edition/:id", to:"book#edition"
end
