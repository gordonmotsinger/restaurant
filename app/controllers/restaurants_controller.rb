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
        @map1 = 'https://maps.googleapis.com/maps/api/staticmap?center=' + @map_dress.to_s + '&zoom=14&size=400x400&
markers=color:blue'+@map_dress.to_s

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
  @restaurant = Restaurant.find(params[:id])
 
  if @restaurant.update(restaurant_params)
    redirect_to @restaurant
  else
    render 'edit'
  end
end

def destroy
    @restaurant=Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to root_path
    flash[:notice] = "You didn't see a cat, did you?"
end


    private
    def restaurant_params
        params.require(:restaurant).permit(:id, :address, :city, :description, :name, :phone)
    end


end
