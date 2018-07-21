class ChangeColumnToProgress < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :progress, :boolean, default: false, null: false
  end
end
