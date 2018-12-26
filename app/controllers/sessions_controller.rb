class SessionsController < ApplicationController
    def new
    end

    def create
        # to view the information in the sessions.
        # debugger
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success]= "You have successfully logged in"
            log_in user
            # goes to dashboard now
            redirect_to "/users/#{user.id}"
        else
          flash.now[:danger] = 'Invalid email/password combination'
          render 'new'
        end
    end

    def destroy
        session[:user_id] === nil
        flash[:success] = "You have logged out"
        redirect_to root_path
    end
end
