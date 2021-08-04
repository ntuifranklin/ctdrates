class CreateRoros < ActiveRecord::Migration[6.1]
  def change
    create_table :roros do |t|
      t.string :title

      t.timestamps
    end
  end
 
  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
