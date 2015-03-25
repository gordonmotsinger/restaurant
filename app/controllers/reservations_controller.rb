class ReservationsController < ApplicationController

    def index
        @ress = Reservations.all
    end

    def new
        @res = Reservations.new
    end

    def create
    end

    def delete
    end

end
