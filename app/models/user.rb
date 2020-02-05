class User < ApplicationRecord
    has_many :user_habits
    has_many :habits, through: :user_habits
    has_secure_password
    validates :name, presence: { message: "Whoops, you need to include a username!"}, uniqueness: { message: "Sorry, that username is taken. Try another one."}
    validates :password, presence: { message: "Whoops, you need to include a password!"}
end