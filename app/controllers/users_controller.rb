class UsersController < ApplicationController
    
    #Need to make a controller for a page where you create a user OR login.
    #perhaps start with a New page
    def new
        @user = User.new
        #Nope @login_name =
        #Nope @password =
    end

end