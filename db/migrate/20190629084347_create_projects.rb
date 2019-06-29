class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :owner_id
      t.string :title
      t.text :description
      t.integer :goal

      t.timestamps
    end
  end
end
