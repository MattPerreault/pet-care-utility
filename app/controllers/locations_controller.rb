class LocationsController < ApplicationController
    def index
       @user = current_user
    end

    def vet 
       @user = current_user
    end

end