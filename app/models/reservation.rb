class Reservation < ActiveRecord::Base
    belongs_to :user
    belongs_to :restaurant

    # correct syntax?
end
