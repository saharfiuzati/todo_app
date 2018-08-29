class RemoveItemFromTodos < ActiveRecord::Migration[5.2]
  def change
    remove_column :todos, :item, :string
  end
end
