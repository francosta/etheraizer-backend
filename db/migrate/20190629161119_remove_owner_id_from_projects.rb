class RemoveOwnerIdFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :owner_id, :integer
  end
end
