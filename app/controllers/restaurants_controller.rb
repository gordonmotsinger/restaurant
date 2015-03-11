class RestaurantsController < ApplicationController

    def index
        @restaurant = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save #update_attributes()
            flash[:notice] = 'Youre restaurant was created.'
            redirect_to @restaurant
        else
            render action: 'new'
        end
    end

    def edit
        @restaurant = Restaurant.find(params[:id]) #find the item
    end

    private
    def restaurant_params
        params.require(:restaurant).permit(:id, :address, :city, :description, :name, :phone)
    end


end
