class CreateHometowns < ActiveRecord::Migration[6.0]
  def change
    create_table :hometowns do |t|
      t.integer :pref_id,   null: false
      t.string  :city,      null: false
      t.references :user
      t.timestamps
    end
  end
end
