Rails.application.routes.draw do
 # root is set to the pages controller for the dashboard action
 # this is temporary until we have a login being the root route
 root "pages#dashboard"
 
 # get route for dashboard route send this to the pages controller dashboard action
 # to test which routes get built from this use the rake routes command at the terminal
 get 'pages/dashboard', to: 'pages#dashboard'
end
