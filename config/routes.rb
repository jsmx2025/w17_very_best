Rails.application.routes.draw do
  # Routes for the Verybest resource:
  # CREATE
  get "/verybests/new", :controller => "verybests", :action => "new"
  post "/create_verybest", :controller => "verybests", :action => "create"

  # READ
  get "/verybests", :controller => "verybests", :action => "index"
  get "/verybests/:id", :controller => "verybests", :action => "show"

  # UPDATE
  get "/verybests/:id/edit", :controller => "verybests", :action => "edit"
  post "/update_verybest/:id", :controller => "verybests", :action => "update"

  # DELETE
  get "/delete_verybest/:id", :controller => "verybests", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Foodvenue resource:
  # CREATE
  get "/foodvenues/new", :controller => "foodvenues", :action => "new"
  post "/create_foodvenue", :controller => "foodvenues", :action => "create"

  # READ
  get "/foodvenues", :controller => "foodvenues", :action => "index"
  get "/foodvenues/:id", :controller => "foodvenues", :action => "show"

  # UPDATE
  get "/foodvenues/:id/edit", :controller => "foodvenues", :action => "edit"
  post "/update_foodvenue/:id", :controller => "foodvenues", :action => "update"

  # DELETE
  get "/delete_foodvenue/:id", :controller => "foodvenues", :action => "destroy"
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------

  # Routes for the Cuisine resource:
  # CREATE
  get "/cuisines/new", :controller => "cuisines", :action => "new"
  post "/create_cuisine", :controller => "cuisines", :action => "create"

  # READ
  get "/cuisines", :controller => "cuisines", :action => "index"
  get "/cuisines/:id", :controller => "cuisines", :action => "show"

  # UPDATE
  get "/cuisines/:id/edit", :controller => "cuisines", :action => "edit"
  post "/update_cuisine/:id", :controller => "cuisines", :action => "update"

  # DELETE
  get "/delete_cuisine/:id", :controller => "cuisines", :action => "destroy"
  #------------------------------

  # Routes for the Food resource:
  # CREATE
  get "/foods/new", :controller => "foods", :action => "new"
  post "/create_food", :controller => "foods", :action => "create"

  # READ
  get "/foods", :controller => "foods", :action => "index"
  get "/foods/:id", :controller => "foods", :action => "show"

  # UPDATE
  get "/foods/:id/edit", :controller => "foods", :action => "edit"
  post "/update_food/:id", :controller => "foods", :action => "update"

  # DELETE
  get "/delete_food/:id", :controller => "foods", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
