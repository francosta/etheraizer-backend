class DropProjectContracts < ActiveRecord::Migration[5.2]
  def change
    drop_table :project_contracts
  end
end
