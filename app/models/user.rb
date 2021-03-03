class User < ApplicationRecord
    has_many :activity_users
    has_many :activities through: :activity_users
    has_secure_password
    has_secure_password :recovery_password, validations: false

    validates :name, uniqueness: true, presence: true
end
