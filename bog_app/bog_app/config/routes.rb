Rails.application.routes.draw do
  get "/creatures", to: "creatures#index", as: "creatures"
  get "/creatures/new", to: "creatures#new", as: "new_creature"
  post "/creatures", to: "creatures#create", as: "creature"
  get "/creatures/:id", to: "creatures#show", as: "show_creature"
  get "/creatures/:id/edit", to: "creatures#edit", as: "edit_creature"
  patch "/creatures/:id", to: "creatures#update"
  delete "/creatures/:id", to: "creatures#destroy"

end
