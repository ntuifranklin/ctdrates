class CreateUpdatechanges < ActiveRecord::Migration[6.1]
  def change
    create_table :updatechanges do |t|
      t.float :newprice
      t.references :tag, null: false, foreign_key: true
      t.references :admin, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :shipline, null: false, foreign_key: true
      t.references :pol, null: false, foreign_key: true
      t.references :pod, null: false, foreign_key: true
      t.references :updatechange, null: false, foreign_key: true

      t.timestamps
    end
  end
  
  def down
    fail ActiveRecord::IrreversibleMigration
  end

end
