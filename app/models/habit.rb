class Habit < ApplicationRecord
    has_many :my_habits
    has_many :users, through: :my_habits
end