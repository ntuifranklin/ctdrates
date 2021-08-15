class CreatePols < ActiveRecord::Migration[6.1]
  def change
    create_table :pols do |t|
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
