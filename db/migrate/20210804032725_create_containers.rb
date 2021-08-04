class CreateContainers < ActiveRecord::Migration[6.1]
  def change
    create_table :containers do |t|
      t.string :type
      t.string :title

      t.timestamps
    end
  end
 
  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
