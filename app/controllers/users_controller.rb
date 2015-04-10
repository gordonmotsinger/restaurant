class UsersController < ApplicationController
    
    #Need to make a controller for a page where you create a user OR login.
    #perhaps start with a New page
    
    def index
        @users=User.all
        @user=
    end

    def new
        @user = User.new
        #Nope @login_name =
        #Nope @password =
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to restaurants_path

        else
            render action: 'new'
        end
    end


    private
    def user_params
        params.require(:user).permit(:id, :login_name, :password)
    end
end