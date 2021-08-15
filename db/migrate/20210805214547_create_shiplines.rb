class CreateShiplines < ActiveRecord::Migration[6.1]
  def change
    create_table :shiplines do |t|
      t.string :name

      t.timestamps
    end
  end
end
