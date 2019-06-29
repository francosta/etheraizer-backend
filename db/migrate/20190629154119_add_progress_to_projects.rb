class AddProgressToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :progress, :integer
  end
end
