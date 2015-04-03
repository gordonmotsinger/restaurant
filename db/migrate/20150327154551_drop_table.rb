class DropTable < ActiveRecord::Migration
  def change
    create_table "restaurants", force: :cascade do |t|
        t.string "gender"
        t.integer "num_bed"
  end
end
