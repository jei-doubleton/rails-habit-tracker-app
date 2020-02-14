class User < ApplicationRecord
    has_many :my_habits
    has_many :habits, through: :my_habits
    has_secure_password
    validates :name, presence: { message: "Whoops, you need to include a username!"}, uniqueness: { message: "Sorry, that username is taken. Try another one."}
end