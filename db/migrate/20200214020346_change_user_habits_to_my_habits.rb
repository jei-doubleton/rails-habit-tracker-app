class ChangeUserHabitsToMyHabits < ActiveRecord::Migration[5.2]
  def change
    rename_table :user_habits, :my_habits
  end
end
