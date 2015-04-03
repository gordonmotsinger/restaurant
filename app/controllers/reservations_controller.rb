class ReservationsController < ApplicationController

    def index
        @ress = Reservation.all
    end

    def new
        @res = Restaurant.find(params[:restaurant_id]).reservations.build
    end

    def create
        @res = Restaurant.find(params[:restaurant_id]).reservations.new(reservation_params)
        if @res.save
            flash[:notice] = "Reservation created!"
            redirect_to reservation_path(@res)
        else
            render action: 'new'
        end
    end

    def show
        @res = Reservation.find(params[:id])
    end

    def edit
        @res = Reservation.find(params[:id])
    end

    def update
        @res = Reservation.find(params[:id])
        if @res.update(reservation_params)
            redirect_to @res
        else
            render 'edit'
        end
    end

    def destroy
        @res = Reservation.find(params[:id])
        if @res.present?
            @res.destroy
        end
        redirect_to reservations_path
    end

  # def destroy
  #   @email = EmployeeEmail.find(params[:id])
  #   if @email.present?
  #     @email.destroy
  #   end
  #   redirect_to employee_email_managers_path
  # end

    private

    def reservation_params
        params.require(:reservation).permit(:id, :res_email, :res_time, :res_party_num, :res_message, :res_restaurant)
    end
end
