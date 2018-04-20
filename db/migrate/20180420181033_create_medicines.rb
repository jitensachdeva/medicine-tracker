class CreateMedicines < ActiveRecord::Migration[5.1]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :detailed_name
      t.integer :quantity_per_package
      t.text :notes

      t.timestamps
    end
  end
end
