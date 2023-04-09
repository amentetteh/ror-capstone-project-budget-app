

class CreateGroupExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :group_expenses, &:timestamps
  end
end
