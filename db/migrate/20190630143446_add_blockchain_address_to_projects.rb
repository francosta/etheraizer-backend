class AddBlockchainAddressToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :blockchain_address, :string
  end
end
