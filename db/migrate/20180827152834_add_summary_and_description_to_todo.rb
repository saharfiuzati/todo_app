class AddSummaryAndDescriptionToTodo < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :Summary, :string
    add_column :todos, :Description, :string
  end
end
