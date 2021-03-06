class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :patron_id
      t.integer :book_id
      t.datetime :checked_out_at
      t.datetime :checked_in_at

      t.timestamps
    end
  end
end
