module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id
    end
    
    # Returns current user (if any)
    def current_user
        if session[:user_id]
          @current_user ||= User.find_by(id: session[:user_id])
        end
    end
    
    # Returns true if currently logged in
    def logged_in?
        !current_user.nil?
    end

    def require_user
        if !logged_in?
            flash[:danger] = "You must be logged in to perform that action"
            redirect_to root_path
        end
    end
end
