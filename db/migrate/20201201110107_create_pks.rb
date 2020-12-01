class CreatePks < ActiveRecord::Migration[6.0]
  def change
    create_table :pks do |t|
      t.string :price

      t.timestamps
    end
  end
end
