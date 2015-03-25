class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :res_email
      t.string :res_time
      t.integer :res_party_num
      t.string :res_message
      t.string :res_restaurant

      t.timestamps null: false
    end
  end
end
