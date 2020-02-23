class MyHabit < ApplicationRecord
    belongs_to :user 
    belongs_to :habit 
    validates :habit_id, presence: { message: "Whoops, you can't track habits without picking a habit!"}
    validates :frequency, presence: { message: "Pick how often you want to do this habit."}


    def name
        self.habit.name
    end

    def habit_name=(name)
        self.habit = Habit.find_or_create_by(name: name)
    end

    def habit_name
        self.habit ? self.habit.name : nil
    end

end