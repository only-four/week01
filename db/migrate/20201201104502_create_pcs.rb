class CreatePcs < ActiveRecord::Migration[6.0]
  def change
    create_table :pcs do |t|
      t.string :price
      t.string :pc

      t.timestamps
    end
  end
end
