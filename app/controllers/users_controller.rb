class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :delete]

    def index
        @user = User.all
        # redirect_to users_path if logged_in?
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)   
        if @user.save
          log_in @user
          flash[:success]="Welcome #{@user.username} to Pet-Care Utility!"
          redirect_to "/users/#{@user.id}"
        else
          render 'new'
        end
    end

    def show
       
    end

    def edit
       
    end
    
    # edit action submits to the update action
    def update 
        if @user.update(user_params)
            flash[:success] = "Your account was updated successfully"
            redirect_to "/users/#{@user.id}"
        else 
            render 'edit'
        end
    end 

    def destroy
        @user.destroy
        flash[:danger] = "User and all associated pets have been deleted!"
    end
    private 

        def user_params
            params.require(:user).permit(:username, :email, :password,
                                         :password_confirmation)
        end

        def set_user
            @user = User.find(params[:id])
        end
end