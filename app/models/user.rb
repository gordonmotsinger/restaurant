class User < ActiveRecord::Base

    validates :login_name, presence: true
    validates :password, presence: true

    def pass(status)
        true
    end

end