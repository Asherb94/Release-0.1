class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.integer :title_id
      t.integer :time
      t.integer :day
      t.string :theater_name

      t.timestamps null: false
    end
  end
end
