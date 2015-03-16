class User

    validates :login, presence: true
    validates :password, presence: true

    def pass(status)
        true
    end

end