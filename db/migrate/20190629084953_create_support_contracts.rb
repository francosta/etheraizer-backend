class CreateSupportContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :support_contracts do |t|
      t.integer :value
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
