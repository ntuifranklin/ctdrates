class CreateRateitems < ActiveRecord::Migration[6.1]
  def change
    create_table :rateitems do |t|
      t.float :price
      t.references :tag, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :shipline, null: false, foreign_key: true
      t.references :pol, null: false, foreign_key: true
      t.references :pod, null: false, foreign_key: true

      t.timestamps
    end
  end
end
