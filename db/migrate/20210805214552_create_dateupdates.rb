class CreateDateupdates < ActiveRecord::Migration[6.1]
  def change
    create_table :dateupdates do |t|
      t.string :datetime
      t.string :hour
      t.string :minute
      t.string :second
      t.string :day
      t.string :month
      t.string :year

      t.timestamps
    end
  end
end
