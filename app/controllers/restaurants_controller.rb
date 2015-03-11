class RestaurantsController < ApplicationController

    def index
        @restaurant = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def show
        @restaurant = Restaurant.find(params[:id])
        @map = 'https://maps.googleapis.com/maps/api/staticmap?center=Berkeley,CA&zoom=14&size=400x400'
        @map_dress = @restaurant.address.gsub(/ /, '+')        
        @map1 = 'https://maps.googleapis.com/maps/api/staticmap?center=' + @map_dress.to_s + '&zoom=14&size=400x400'

    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save #update_attributes()
            flash[:notice] = 'Your restaurant was created.'
            redirect_to @restaurant
        else
            render action: 'new'
        end
    end

    def edit
        @restaurant = Restaurant.find(params[:id]) #find the item
    end

    def update
    end

    private
    def restaurant_params
        params.require(:restaurant).permit(:id, :address, :city, :description, :name, :phone)
    end


end
