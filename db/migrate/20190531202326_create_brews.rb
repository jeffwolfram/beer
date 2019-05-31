class CreateBrews < ActiveRecord::Migration[5.2]
  def change
    create_table :brews do |t|
      t.date :date
      t.string :name
      t.float :mash_gravity
      t.float :pre_boil_gravity
      t.float :pre_keg_gravity
      t.float :final_gravity
      t.text :notes
      t.float :mash_temp
      t.integer :mash_time
      t.integer :boil_time

      t.timestamps
    end
  end
end
