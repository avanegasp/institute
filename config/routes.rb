Rails.application.routes.draw do


# get '/', to: "students#index"
# get '/new', to: "students#new"

root "students#index"
resources :students
end
