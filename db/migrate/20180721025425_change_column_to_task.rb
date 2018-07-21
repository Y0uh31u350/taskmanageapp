class ChangeColumnToTask < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :progress, :string, :default => "InComplete"
  end
end
