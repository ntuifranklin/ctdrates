class CreatePods < ActiveRecord::Migration[6.1]
  def change
    create_table :pods do |t|
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
  
  
  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
